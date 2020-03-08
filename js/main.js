// import the login component first (actually all components here, but we're starting with login)
import LoginComponent from "./components/LoginComponent.js";
import UsersComponent from "./components/UsersComponent.js";
import TestComponent from "./components/TestComponent.js";
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
      { path: '/users', name: "users", component: UsersComponent,
    beforeEnter: (to, from, next) => {
      if(vm.authenticated == undefined) {
        next("/loginFail");} else{ next(); }
    }
  },
  { path: '/test', name: "test", component: TestComponent},
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
      // do a localstorage session check and set authenticated to true if the session still exists
      // if the cached user exists, then just navigate to their user home page

      // the localstorage session will persist until logout
      
  },

    methods: {
      setAuthenticated(status, data) {
        this.authenticated = data;
        // handle implicit type coercion (bad, bad part of JS)
        // turn our admin 1 or 0 back into a number
        this.administrator = parseInt(data.isadmin);
        this.user = data;
      },

      logout() {
        // delete local session

        // push user back to login page
        this.$router.push({ path: "/login" });
        this.authenticated = false;
        this.administrator = false;
      }
    },

    router: router
  }).$mount("#app");

  router.beforeEach((to, from, next) => {
    console.log("router guard fire");

    if (vm.authenticated == false) {
        next("/login");
    } else {
        next();
    }
});

router.beforeEach((to, from, next) => {
  console.log("router guard fire");

  if (vm.authenticated == undefined) {
      next("/login");
  } else {
      next();
  }
})

  
})();