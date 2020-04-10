import SingleAudioComponent from "../SingleAudioComponent.js";

// loop through the profiles and render each one
export default {
    template: `
    <div class="container">
    <nav class="filterNav">
    <h3>View By Decade</h3>
        <ul>
            <li><a @click.prevent="slideToFifty()" href="#fifty">50s</a></li>
            <li><a @click.prevent="slideToSixty()" href="#sixty">60s</a></li>
            <li><a @click.prevent="slideToSeventy()" href="#seventy">70s</a></li>
            <li><a @click.prevent="slideToEighty()" href="#eighty">80s</a></li>
            <li><a  @click.prevent="slideToNinety()"href="#ninety">90s</a></li>
        </ul>
    </nav>
        <div class="">
        <div class="dynamicBox">
        <span @click="hideContent()" class="dynClose">X</span>
        <div class="dynWrap">
        <div class="dynImgWrap">
            <h4>{{currentSong.name}}</h4>
            <img :src="'images/' + currentSong.image + '.jpg'">
            </div>
            <div class="dynPara">
            <h4>{{currentSong.year}}</h4>
            <div id="fb-root"></div>
            <div class="socialBtns">
            <div class="fb-share-button" 
                :data-href="'https://www.facebook.com/' + currentSong.name" 
                data-layout="button"
                data-size="large">
            </div>
            <div class="twitter-share-button">
                <a :href="'https://twitter.com/intent/tweet?text=Just Finished Watching ' + currentSong.name + ' on RokuFlashback'">Tweet</a>
            </div>
            </div>
            <p v-html="currentSong.description"></p>
            </div>
            </div>
        </div>
            <div class="wrapper songWrapper">
            <div id="fifty" class="kidsDec fifty">
                <h1>'50s</h1>
                <div class="decadeWrap">
                <songs v-if="song.decade==='1950'" v-for="song in songs" v-on:click.native="newInfo(song); showContent()" :name="songs.name" :key="song.id" :songs="song"
                ></songs>
                </div>
                </div>

                <div id="sixty" class="kidsDec sixty">
                <h1>'60s</h1>
                <div class="decadeWrap">
                <songs v-if="song.decade==='1960'" v-for="song in songs" v-on:click.native="newInfo(song); showContent()" :name="songs.name" :key="song.id" :songs="song"
                ></songs>
                </div>
                </div>

                <div id="seventy" class="kidsDec seventy">
                <h1>'70s</h1>
                <div class="decadeWrap">
                <songs v-if="song.decade==='1970'" v-for="song in songs" v-on:click.native="newInfo(song); showContent()" :name="songs.name" :key="song.id" :songs="song"
                ></songs>
                </div>
                </div>

                <div id="eighty" class="kidsDec eighty">
                <h1>'80s</h1>
                <div class="decadeWrap">
                <songs v-if="song.decade==='1980'" v-for="song in songs" v-on:click.native="newInfo(song); showContent()" :name="songs.name" :key="song.id" :songs="song"
                ></songs>
                </div>
                </div>

                <div id="ninety" class="kidsDec ninety">
                <h1>'90s</h1>
                <div class="decadeWrap">
                <songs v-if="song.decade==='1990'" v-for="song in songs" v-on:click.native="newInfo(song); showContent()" :name="songs.name" :key="song.id" :songs="song"
                ></songs>
                </div>
                </div>
            </div>
        </div>
        </div>
        </div>
         
    `, 

    data: function() {
        return {
            songs: [],
            currentSong: {}
        }
    },

    created: function() {
        // render the profiles on the page
        this.fetchKidsSongs();

        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0";
            fjs.parentNode.insertBefore(js, fjs);
          }(document, 'script', 'facebook-jssdk'));
    },


    methods: {
        fetchKidsSongs() {
            
            if(localStorage.getItem("cachedMusic2")) {

                this.songs = JSON.parse(localStorage.getItem("cachedMusic2"));

                this.currentSong =  this.songs[0];

            } else {
                let url = `./includes/index.php?getKidsMusic`;
            fetch(url)
            .then(res => res.json())
            .then(data => {
                localStorage.setItem("cachedMusic2", JSON.stringify(data));

                this.songs = data;
                this.currentSong =  data[0];
            })
            .catch((err) => {console.error(err)})
            }
        },

        newInfo(info) {
            this.currentSong = info;
        },

        showContent() {
            let popup = document.querySelector('.dynamicBox'),
                body = document.querySelector('body');
            popup.classList.add("dynPopin");

            body.classList.add("stop-scrolling");
            
        },

        hideContent() {
            let popup = document.querySelector('.dynamicBox'),
                body = document.querySelector('body');
            popup.classList.remove("dynPopin");

            body.classList.remove("stop-scrolling");
        },

        slideToFifty() {
            $('html, body').animate({
                scrollTop: $("#fifty").offset().top
            }, 600);
        },

        slideToSixty() {
            $('html, body').animate({
                scrollTop: $("#sixty").offset().top
            }, 600);
        },

        slideToSeventy() {
            $('html, body').animate({
                scrollTop: $("#seventy").offset().top
            }, 600);
        },

        slideToEighty() {
            $('html, body').animate({
                scrollTop: $("#eighty").offset().top
            }, 600);
        },

        slideToNinety() {
            $('html, body').animate({
                scrollTop: $("#ninety").offset().top
            }, 600);
        }


    },

    components: {
        // grab any profiles from singlesong component
        songs: SingleAudioComponent,
    }
}