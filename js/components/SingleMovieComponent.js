// this will load a profile that corresponds to whether or not the profile is labeled as kids
export default {
    props: ['movies'], 

    // this will check whether the profile is that of a kids or not. if so, set the link to /kids
    // if not, set it to /adults

    template: `
    <div class="movieContainer contentCon">
        <h1>{{ movies.year }}</h1>
    <img :src="'images/' + movies.image + '.jpg'" alt="movie banner" class="movieImg"> 
        <h2>{{ movies.name }}</h2>
    </div>
    `,

}
  
    
