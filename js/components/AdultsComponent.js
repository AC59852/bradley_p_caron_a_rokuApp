import VideoComponent from "./adultModules/VideoComponent.js";
import AudioComponent from "./adultModules/AudioComponent.js";
import TvComponent from "./adultModules/TvComponent.js";

// loop through the profiles and render each one
export default {
    template: `
    <div class="container">
    <nav class="bottomNav">
        <ul>
            <li><a href="index.html#/profiles"><img src="./images/home.svg"></router-link></a></li>
            <li @click="switchMovieComponent" class="btn1"><img src="./images/movie.svg"></li>
            <li @click="switchTvComponent" class="btn2"><img src="./images/tv.svg"></li>
            <li @click="switchAudioComponent" class="btn3"><img src="./images/music.svg"></li>
        </ul>
    </nav>
           <component :is="activeComponent"></component>
        </div>
         
    `, 

    data: function(){
        return {
            activeComponent: VideoComponent
        }
    },

    mounted() {
        let bottomNav = document.querySelector(".bottomNav ul")
    $(".btn1").click(function() {
        $('.movieWrapper').addClass("test2");
        $('.movieWrapper').on("animationend", function () {
            $('.movieWrapper').removeClass("test2");
        });
    });
    $(".btn2").click(function() {
        $('.movieWrapper').addClass("test2");
        $('.movieWrapper').one("animationend", function () {
            $('.movieWrapper2').removeClass("test2");
        });;
    });
    $(".btn3").click(function() {
        $('.movieWrapper').addClass("test2");
        $('.movieWrapper').one("animationend", function () {
            $('.movieWrapper2').removeClass("test2");
        });;
    });

    window.addEventListener('wheel', function(event) {
        if (event.deltaY < 0) {
            bottomNav.classList.remove("lower");
        } else if (event.deltaY > 0) {

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
        switchMovieComponent() {
            this.activeComponent = VideoComponent;
        },
        switchTvComponent() {
            this.activeComponent = TvComponent;
        },
        switchAudioComponent() {
            this.activeComponent = AudioComponent;
        },
    }
}