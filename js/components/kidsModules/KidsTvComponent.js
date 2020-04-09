import SingleTvComponent from "../SingleTvComponent.js";

// loop through the profiles and render each one
export default {
    template: `
    <div class="container">
        <div class="">
        <div class="dynamicBox">
            <h4>{{currentShow.name}}</h4>
            <h4>{{currentShow.year}}</h4>
            <img :src="'images/' + currentShow.image + '.jpg'">
            <p v-html="currentShow.description"></p>
        </div>
            <div class="wrapper showWrapper">
            <div class=" fifty">
                <h1>'50s</h1>
                <div class="decadeWrap">
                <shows v-if="show.decade==='1950'" v-for="show in shows" v-on:click.native="newInfo(show)" :name="shows.name" :key="show.id" :shows="show"
                ></shows>
                </div>
                </div>

                <div class="sixty">
                <h1>'60s</h1>
                <div class="decadeWrap">
                <shows v-if="show.decade==='1960'" v-for="show in shows" v-on:click.native="newInfo(show)" :name="shows.name" :key="show.id" :shows="show"
                ></shows>
                </div>
                </div>

                <div class="seventy">
                <h1>'70s</h1>
                <div class="decadeWrap">
                <shows v-if="show.decade==='1970'" v-for="show in shows" v-on:click.native="newInfo(show)" :name="shows.name" :key="show.id" :shows="show"
                ></shows>
                </div>
                </div>

                <div class="eighty">
                <h1>'80s</h1>
                <div class="decadeWrap">
                <shows v-if="show.decade==='1980'" v-for="show in shows" v-on:click.native="newInfo(show)" :name="shows.name" :key="show.id" :shows="show"
                ></shows>
                </div>
                </div>

                <div class="ninety">
                <h1>'90s</h1>
                <div class="decadeWrap">
                <shows v-if="show.decade==='1990'" v-for="show in shows" v-on:click.native="newInfo(show)" :name="shows.name" :key="show.id" :shows="show"
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

    created: function() {
        // render the profiles on the page
        this.fetchKidsShows();
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
        }

    },

    components: {
        // grab any profiles from singlemovie component
        shows: SingleTvComponent,
    }
}