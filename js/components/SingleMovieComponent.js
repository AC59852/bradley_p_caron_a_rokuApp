// this is the template for each movie rendered using v-for
export default {
    props: ['movies'], 

    template: `
    <div class="movieContainer contentCon">
    <div class="imgDiv">
    <img :src="'images/' + movies.image + '.jpg'" alt="movie banner" class="movieImg"> 
    </div>
        <h3>{{ movies.name }}</h3>
    </div>
    `

}
  
    
