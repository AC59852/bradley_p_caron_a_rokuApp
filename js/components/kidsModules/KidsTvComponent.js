import SingleTvComponent from "../SingleTvComponent.js";

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
        <div class="dynamicBox kidsBox">
        <span @click="hideContent()" class="dynClose">X</span>
        <div class="dynWrap">
        <div class="dynImgWrap">
            <h4>{{currentShow.name}}</h4>
            <img :src="'images/' + currentShow.image + '.jpg'">
            </div>
            <div class="dynPara">
            <h4>{{currentShow.year}}</h4>
            <div id="fb-root"></div>
            <div class="socialBtns">
            <div class="fb-share-button" 
                :data-href="'https://www.facebook.com/' + currentShow.name" 
                data-layout="button"
                data-size="large">
            </div>
            <div class="twitter-share-button">
                <a :href="'https://twitter.com/intent/tweet?text=Just Finished Watching ' + currentShow.name + ' on RokuFlashback'">Tweet</a>
            </div>
            </div>
            <p v-html="currentShow.description"></p>
            </div>
            </div>
        </div>
            <div class="wrapper showWrapper">
            <div id="fifty" class="fifty">
                <h1>'50s</h1>
                <div class="decadeWrap">
                <shows v-if="show.decade==='1950'" v-for="show in shows" v-on:click.native="newInfo(show); showContent()" :name="shows.name" :key="show.id" :shows="show"
                ></shows>
                </div>
                </div>

                <div id="sixty" class="sixty">
                <h1>'60s</h1>
                <div class="decadeWrap">
                <shows v-if="show.decade==='1960'" v-for="show in shows" v-on:click.native="newInfo(show); showContent()" :name="shows.name" :key="show.id" :shows="show"
                ></shows>
                </div>
                </div>

                <div id="seventy" class="seventy">
                <h1>'70s</h1>
                <div class="decadeWrap">
                <shows v-if="show.decade==='1970'" v-for="show in shows" v-on:click.native="newInfo(show); showContent()" :name="shows.name" :key="show.id" :shows="show"
                ></shows>
                </div>
                </div>

                <div id="eighty" class="eighty">
                <h1>'80s</h1>
                <div class="decadeWrap">
                <shows v-if="show.decade==='1980'" v-for="show in shows" v-on:click.native="newInfo(show); showContent()" :name="shows.name" :key="show.id" :shows="show"
                ></shows>
                </div>
                </div>

                <div id="ninety" class="ninety">
                <h1>'90s</h1>
                <div class="decadeWrap">
                <shows v-if="show.decade==='1990'" v-for="show in shows" v-on:click.native="newInfo(show); showContent()" :name="shows.name" :key="show.id" :shows="show"
                ></shows>
                </div>
                </div>
            </div>
        </div>
        </div>
        </div>
         
    `, 

    data: function() {
        return {
            shows: [],
            currentShow: {}
        }
    },

    mounted: function(){
        $('a[href^="#"]').on('click', function(event) {
            var target = $(this.getAttribute('href'));
            if( target.length ) {
                event.preventDefault();
                $('html, body').stop().animate({
                    scrollTop: target.offset().top
                }, 1000);
            }
        });
    },

    created: function() {
        // render the profiles on the page
        this.fetchKidsShows();

        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            js = d.createElement(s); js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0";
            fjs.parentNode.insertBefore(js, fjs);
          }(document, 'script', 'facebook-jssdk'));
    },


    methods: {
        fetchKidsShows() {
            
            if(localStorage.getItem("cachedShows2")) {

                this.shows = JSON.parse(localStorage.getItem("cachedShows2"));

                this.currentShow =  this.shows[0];

            } else {
                let url = `./includes/index.php?getKidsShows`;
            fetch(url)
            .then(res => res.json())
            .then(data => {
                localStorage.setItem("cachedShows2", JSON.stringify(data));

                this.shows = data;
                this.currentShow =  data[0];
                
            })
            .catch((err) => {console.error(err)})
            }
        },

        newInfo(info) {
            this.currentShow = info;
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
        // grab any profiles from singlemovie component
        shows: SingleTvComponent,
    }
}