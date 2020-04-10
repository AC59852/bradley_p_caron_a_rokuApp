import SingleMovieComponent from "../SingleMovieComponent.js";

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
            <h4>{{currentMovie.name}}</h4>
            <img :src="'images/' + currentMovie.image + '.jpg'">
            </div>
            <div class="dynPara">
            <h4>{{currentMovie.year}}</h4>
            <div id="fb-root"></div>
            <div class="socialBtns">
            <div class="fb-share-button" 
                :data-href="'https://www.facebook.com/' + currentMovie.name" 
                data-layout="button"
                data-size="large">
            </div>
            <div class="twitter-share-button">
                <a :href="'https://twitter.com/intent/tweet?text=Just Finished Watching ' + currentMovie.name + ' on RokuFlashback'">Tweet</a>
            </div>
            </div>
            <p v-html="currentMovie.description"></p>
            </div>
            </div>
        </div>
            <div class="wrapper movieWrapper">
            <div id="fifty" class="kidsDec fifty">
                <h1>'50s</h1>
                <div class="decadeWrap">
                <movies v-if="movie.decade==='1950'" v-for="movie in movies" v-on:click.native="newInfo(movie); showContent()" :name="movies.name" :key="movie.id" :movies="movie"
                ></movies>
                </div>
                </div>

                <div id="sixty" class="kidsDec sixty">
                <h1>'60s</h1>
                <div class="decadeWrap">
                <movies v-if="movie.decade==='1960'" v-for="movie in movies" v-on:click.native="newInfo(movie); showContent()" :name="movies.name" :key="movie.id" :movies="movie"
                ></movies>
                </div>
                </div>

                <div id="seventy" class="kidsDec seventy">
                <h1>'70s</h1>
                <div class="decadeWrap">
                <movies v-if="movie.decade==='1970'" v-for="movie in movies" v-on:click.native="newInfo(movie); showContent()" :name="movies.name" :key="movie.id" :movies="movie"
                ></movies>
                </div>
                </div>

                <div id="eighty" class="kidsDec eighty">
                <h1>'80s</h1>
                <div class="decadeWrap">
                <movies v-if="movie.decade==='1980'" v-for="movie in movies" v-on:click.native="newInfo(movie); showContent()" :name="movies.name" :key="movie.id" :movies="movie"
                ></movies>
                </div>
                </div>

                <div id="ninety" class="kidsDec ninety">
                <h1>'90s</h1>
                <div class="decadeWrap">
                <movies v-if="movie.decade==='1990'" v-for="movie in movies" v-on:click.native="newInfo(movie); showContent()" :name="movies.name" :key="movie.id" :movies="movie"
                ></movies>
                </div>
                </div>
            </div>
        </div>
        </div>
        </div>
         
    `, 

    data: function() {
        return {
            movies: [],
            currentMovie: {}
        }
    },

    created: function() {
        // render the profiles on the page
        this.fetchKidsMovies();

        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0";
            fjs.parentNode.insertBefore(js, fjs);
          }(document, 'script', 'facebook-jssdk'));

    },


    methods: {
        fetchKidsMovies() {
            
            if(localStorage.getItem("cachedMovies2")) {

                this.movies = JSON.parse(localStorage.getItem("cachedMovies2"));

                this.currentMovie =  this.movies[0];

            } else {
                let url = `./includes/index.php?getKidsMovies`;
            fetch(url)
            .then(res => res.json())
            .then(data => {
                localStorage.setItem("cachedMovies2", JSON.stringify(data));

                this.movies = data;
                this.currentMovie =  data[0];
            })
            .catch((err) => {console.error(err)})
            }
        },

        newInfo(info) {
            this.currentMovie = info;
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
        movies: SingleMovieComponent,
    }
}