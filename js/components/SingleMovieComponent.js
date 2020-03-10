// this is the template for each movie rendered using v-for
export default {
    props: ['movies'], 

    template: `
    <div class="movieContainer contentCon">
        <h1>{{ movies.year }}</h1>
    <img :src="'images/' + movies.image + '.jpg'" alt="movie banner" class="movieImg"> 
        <h2>{{ movies.name }}</h2>
    </div>
    `,

}
  
    
