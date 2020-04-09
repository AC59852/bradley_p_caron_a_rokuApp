import SingleAudioComponent from "../SingleAudioComponent.js";

// loop through the profiles and render each one
export default {
    template: `
    <div class="container">
        <div class="">
        <div class="dynamicBox">
            <h4>{{currentSong.name}}</h4>
            <h4>{{currentSong.year}}</h4>
            <img :src="'images/' + currentSong.image + '.jpg'">
            <p v-html="currentSong.description"></p>
        </div>
            <div class="wrapper movieWrapper">
            <div class=" fifty">
                <h1>'50s</h1>
                <div class="decadeWrap">
                <songs v-if="song.decade==='1950'" v-for="song in songs" v-on:click.native="newInfo(song)" :name="songs.name" :key="song.id" :songs="songs"
                ></songs>
                </div>
                </div>

                <div class="sixty">
                <h1>'60s</h1>
                <div class="decadeWrap">
                <songs v-if="song.decade==='1960'" v-for="song in songs" v-on:click.native="newInfo(song)" :name="songs.name" :key="song.id" :songs="song"
                ></songs>
                </div>
                </div>

                <div class="seventy">
                <h1>'70s</h1>
                <div class="decadeWrap">
                <songs v-if="song.decade==='1970'" v-for="song in songs" v-on:click.native="newInfo(song)" :name="songs.name" :key="song.id" :songs="song"
                ></songs>
                </div>
                </div>

                <div class="eighty">
                <h1>'80s</h1>
                <div class="decadeWrap">
                <songs v-if="song.decade==='1980'" v-for="song in songs" v-on:click.native="newInfo(song)" :name="songs.name" :key="song.id" :songs="song"
                ></songs>
                </div>
                </div>

                <div class="ninety">
                <h1>'90s</h1>
                <div class="decadeWrap">
                <songs v-if="song.decade==='1990'" v-for="song in songs" v-on:click.native="newInfo(movie)" :name="songs.name" :key="song.id" :songs="song"
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
        this.fetchKidsMusic();
    },


    methods: {
        fetchKidsMusic() {
            
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
        }

    },

    components: {
        // grab any profiles from singlemovie component
        songs: SingleAudioComponent,
    }
}