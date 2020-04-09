// this is the template for each movie rendered using v-for
export default {
    props: ['songs'], 

    template: `
    <div class="audioContainer contentCon">
    <div class="imgDiv"> 
    <img :src="'images/' + songs.image + '.jpg'" alt="movie banner" class="musicImg"> 
    </div>
        <h3>{{ songs.name }}</h3>
    </div>
    `

}
  