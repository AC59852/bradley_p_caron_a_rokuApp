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
        </div>
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
        this.fetchKidsMovies();
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
        }

    },

    components: {
        // grab any profiles from singlemovie component
        movies: SingleMovieComponent,
    }
}