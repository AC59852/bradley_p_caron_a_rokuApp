import SingleMovieComponent from "../SingleMovieComponent.js";

// loop through the profiles and render each one
export default {
    template: `
    <div class="container">
        <div class="">
        <div class="dynamicBox">
            <h4>{{currentMovie.name}}</h4>
            <h4>{{currentMovie.year}}</h4>
            <img :src="'images/' + currentMovie.image + '.jpg'">
            <p v-html="currentMovie.description"></p>
            <div id="fb-root"></div>
            <div class="fb-share-button"
                :href="'http://www.rokuflashback.com/' + currentMovie.name " 
                data-layout="button">
            </div>
            </div>
            <a class="twitter-share-button"
            :href="'https://twitter.com/intent/tweet?text=Just Finished Watching ' + currentMovie.name + ' on Roku Flashback.'">
            Tweet</a>
            <div class="wrapper movieWrapper">
                <movies v-for="movie in movies" v-on:click.native="newInfo(movie)" :name="movies.name" :key="movie.id" :movies="movie"
                ></movies>
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
        this.fetchAllMovies();

        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0";
            fjs.parentNode.insertBefore(js, fjs);
          }(document, 'script', 'facebook-jssdk'));
        
    },


    methods: {
        fetchAllMovies() {

            if(localStorage.getItem("cachedMovies")) {

                this.movies = JSON.parse(localStorage.getItem("cachedMovies"));

                this.currentMovie =  this.movies[0];

            } else {
                let url = `./includes/index.php?getAllMovies`;
            fetch(url)
            .then(res => res.json())
            .then(data => {
                localStorage.setItem("cachedMovies", JSON.stringify(data));

                this.movies = data;
                this.currentMovie =  data[0];
            })
            .catch((err) => {console.error(err)})
            }
            
        },

        newInfo(info) {
            this.currentMovie = info;
        }

    },

    components: {
        // grab any profiles from singlemovie component
        movies: SingleMovieComponent,

    }
}