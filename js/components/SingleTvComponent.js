export default {
    props: ['shows'], 

    template: `
    <div class="audioContainer contentCon">
    <div class="imgDiv"> 
    <img :src="'images/' + shows.image + '.jpg'" alt="movie banner" class="musicImg"> 
    </div>
        <h3>{{ shows.name }}</h3>
    </div>
    `

}
  