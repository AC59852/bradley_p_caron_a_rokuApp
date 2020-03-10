import SingleMovieComponent from "./SingleMovieComponent.js";

// loop through the profiles and render each one
export default {
    template: `
    <div class="container">
    <nav class="bottomNav">
        <ul>
            <li><a href="index.html#/users"><img src="./images/home.svg"></router-link></a></li>
            <li class="btn1"><img src="./images/movie.svg"></li>
            <li class="btn2"><img src="./images/tv.svg"></li>
            <li class="btn3"><img src="./images/music.svg"></li>
        </ul>
    </nav>
        <div class="">
            <div class="wrapper movieWrapper">
                <movies v-for="movie in movies" :name="movies.name" :key="movie.id" :movies="movie"
                ></movies>
            </div>
        </div>
        <div class="">
            <div class="hidden wrapper movieWrapper2">
                <movies v-for="movie in movies" :name="movies.name" :key="movie.id" :movies="movie"
                ></movies>
            </div>
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
        let bottomNav = document.querySelector(".bottomNav ul")
    $(".btn1").click(function() {
        $('.wrapper').not(".movieWrapper").addClass("hidden");
        $('.movieWrapper').removeClass("hidden");
        $('.movieWrapper').addClass("test2");
        $('.movieWrapper').on("animationend", function () {
            $('.movieWrapper').removeClass("test2");
        });
    });
    $(".btn2").click(function() {
        $('.wrapper').not(".movieWrapper2").addClass("hidden");
        $('.movieWrapper2').removeClass("hidden");
        $('.movieWrapper2').addClass("test2");
        $('.movieWrapper2').one("animationend", function () {
            $('.movieWrapper2').removeClass("test2");
        });;
    });
    $(".btn3").click(function() {
        $('.wrapper').not(".movieWrapper3").addClass("hidden");
        $('.movieWrapper3').removeClass("hidden");
        $('.movieWrapper3').addClass("test2");
        $('.movieWrapper3').one("animationend", function () {
            $('.movieWrapper2').removeClass("test2");
        });;
    });

    window.addEventListener('wheel', function(event) {
        if (event.deltaY < 0) {
            console.log('pulling up');
            bottomNav.classList.remove("lower");
        } else if (event.deltaY > 0) {
            console.log('pushing down');
            bottomNav.classList.add("lower");
        }
    });


document.addEventListener('touchstart', touchDown, false);
document.addEventListener('touchmove', touchMove, false);

var xtouch = null;
var ytouch = null;

function getTouches(e) {
    return e.touches || e.originalEvent.touches;
}

function touchDown(e) {
    const firstTouch = getTouches(e)[0];                                      
    xtouch = firstTouch.clientX;
    ytouch = firstTouch.clientY;
};

function touchMove(e) {
    if ( ! xtouch || ! ytouch ) {
        return;
    }

    var xUp = e.touches[0].clientX;
    var yUp = e.touches[0].clientY;

    var xDiff = xtouch - xUp;
    var yDiff = ytouch - yUp;

    if ( Math.abs( xDiff ) > Math.abs( yDiff ) ) {
        if ( xDiff > 0 ) {
            return;
        } else {
            return;
        } } else {
        if ( yDiff > 0 ) {
            bottomNav.classList.add("lower");
            console.log("pushing down");
        } else {
            bottomNav.classList.remove("lower");
            console.log("pulling up");
        }         
    }

    xtouch = null;
    ytouch = null;
};
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