// this will load a profile that corresponds to whether or not the profile is labeled as kids
export default {
    props: ['profile'], 

    // this will check whether the profile is that of a kids or not. if so, set the link to /kids
    // if not, set it to /adults

    template: `
    <div class="profileContainer">
        <router-link v-if="profile.isKid == '1'" to="/kids" class="profileWrapper">
            <img :src="'images/' + profile.profileImg" alt="profile avatar" class="profileImg">
                <h2>{{profile.profileName}}</h2>
        </router-link>
    
        <router-link v-if="profile.isKid == '0'" to="/adults" class="profileWrapper">
            <img :src="'images/' + profile.profileImg" alt="profile avatar" class="profileImg">
                <h2>{{profile.profileName}}</h2>
        </router-link> 
    </div>
    `  
}

    
