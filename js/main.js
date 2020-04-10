// import the login component first (actually all components here, but we're starting with login)
import LoginComponent from "./components/LoginComponent.js";
import ProfilesComponent from "./components/ProfilesComponent.js";
import KidsComponent from "./components/KidsComponent.js";
import AdultsComponent from "./components/AdultsComponent.js";
import LoginFailComponent from "./components/LoginFailComponent.js";

(() => {
  let router = new VueRouter({
    // set routes
    routes: [
      { path: '/', redirect: { name: "login" } },
      { path: '/login', name: "login", component: LoginComponent },
      { path: '/loginFail', name: "loginFail", component: LoginFailComponent },
      { path: '/profiles', name: "profiles", component: ProfilesComponent,
    beforeEnter: (to, from, next) => {
      if(vm.authenticated == undefined) {
        next("/loginFail");} else{ next(); }
    }
  },
  { path: '/kids', name: "kids", component: KidsComponent},
  { path: '/adults', name: "adults", component: AdultsComponent},
    

]
  });

  const vm = new Vue({

    data: {
      authenticated: false,
      administrator: false,
      
      user: [],

      //currentUser: {},
    },

    created: function () {
      
  },

    methods: {
      setAuthenticated(status, data) {
        this.authenticated = status;
        // handle implicit type coercion (bad, bad part of JS)
        // turn our admin 1 or 0 back into a number
        this.administrator = parseInt(data.admin);
        this.user = data;
      },

      logout() {
        // delete local session

        // push user back to login page
        this.$router.push({ name: "login" });
        this.authenticated = false;
        this.administrator = false;

        if(localStorage.getItem("cachedMovies")) {
          localStorage.removeItem("cachedMovies");
        }

        if(localStorage.getItem("cachedShows")) {
          localStorage.removeItem("cachedShows");
        }

        if(localStorage.getItem("cachedShows2")) {
          localStorage.removeItem("cachedShows2");
        }

        if(localStorage.getItem("cachedMusic")) {
          localStorage.removeItem("cachedMusic");
        }

        if(localStorage.getItem("cachedMusic2")) {
          localStorage.removeItem("cachedsongs2");
        }

        if(localStorage.getItem("cachedMovies2")) {
          localStorage.removeItem("cachedMovies2");
        }
      }
    },

    router: router
  }).$mount("#app");

  router.beforeEach((to, from, next) => {
    console.log("authentication");

    if (vm.authenticated == false) {
        next("/login");
    } else {
        next();
    }
});

router.beforeEach((to, from, next) => {

  if (vm.authenticated == undefined) {
      next("/login");
  } else {
      next();
  }
})

  
})();