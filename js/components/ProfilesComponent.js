import SingleProfileComponent from "./SingleProfileComponent.js";

// loop through the profiles and render each one
export default {
    template: `
    <div class="container">
        <div class="profileCon">
            <div class="profileWrap">
                <profile v-for="profile in profiles" :key="profile.id" :profile="profile"></profile>
            </div>
        </div>
    </div> 
    `, 

    data: function() {
        return {
            profiles: []
        }
    },

    created: function() {
        // render the profiles on the page
        this.fetchAllProfiles();
    },

    methods: {
        fetchAllProfiles() {
            let url = `./includes/index.php?getUsers=true`;
            fetch(url)
            .then(res => res.json())
            .then(data => {this.profiles = data})
            .catch((err) => {console.error(err)})
        }
    },

    components: {
        // grab any profiles from singleuser component
        profile: SingleProfileComponent
    }
}