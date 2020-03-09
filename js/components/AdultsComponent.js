import SingleMovieComponent from "./SingleMovieComponent.js";

// loop through the profiles and render each one
export default {
    template: `
    <div class="container">
    <nav class="bottomNav">
        <ul>
            <li><img src="./images/home.svg"></li>
            <li><img src="./images/movie.svg"></li>
            <li><img src="./images/tv.svg"></li>
            <li><img src="./images/music.svg"></li>
        </ul>
    </nav>
        <div class="">
            <div class="movieWrapper">
                <movies v-for="movie in movies" :key="movie.id" :movies="movie"></movies>
            </div>
        </div>
    </div> 
    `, 

    data: function() {
        return {
            movies: []
        }
    },

    created: function() {
        // render the profiles on the page
        this.fetchAllMovies();
    },

    methods: {
        fetchAllMovies() {
            let url = `./includes/index.php?getAllMovies=true`;
            fetch(url)
            .then(res => res.json())
            .then(data => {this.movies = data})
            .catch((err) => {console.error(err)})
        }
    },

    components: {
        // grab any profiles from singleuser component
        movies: SingleMovieComponent
    }
}