import SingleMovieComponent from "./SingleMovieComponent.js";

// loop through the profiles and render each one
export default {
    template: `
    <div class="container">
    <nav class="bottomNav">
        <ul>
            <li><a href="index.html#/users"><img src="./images/home.svg"></router-link><a></li>
            <li class="test1"><img src="./images/movie.svg"></li>
            <li class="test2"><img src="./images/tv.svg"></li>
            <li><img src="./images/music.svg"></li>
        </ul>
    </nav>
        <div class="">
            <div class=" wrapper movieWrapper">
                <movies v-for="movie in movies" :name="movies.name" :key="movie.id" :movies="movie"
                ></movies>
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

    mounted() {
    $(".test1").click(function() {
        $('.wrapper').not(".movieWrapper").addClass("hidden");
        $('.movieWrapper').removeClass("hidden");
    });
    $(".test2").click(function() {
        $('.wrapper').not(".movieWrapper2").addClass("hidden");
        $('.movieWrapper2').removeClass("hidden");
    });
    },

    methods: {
        fetchAllMovies() {
            let url = `./includes/index.php?getAllMovies=true`;
            fetch(url)
            .then(res => res.json())
            .then(data => {this.movies = data})
            .catch((err) => {console.error(err)})
        },
        

    },

    components: {
        // grab any profiles from singlemovie component
        movies: SingleMovieComponent,
    }
}