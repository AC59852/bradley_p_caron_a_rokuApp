export default {
    template: `
        <div class="container">
            <div class="loginWrapper">
                <h1 class="title">Login</h1>
                

                <form @submit.prevent="login">
                    <div class="inputCon">
                        <div class="inputWrapper">
                            <label class="userLabel" for="username">username</label>
                            <input v-model="input.username" type="text" class="" id="username" placeholder="Username:" name="username" required>
                        </div>

                        <div class="inputWrapper">
                            <label class="passLabel" for="inlineFormPassword">Password:</label>
                            <input v-model="input.password" type="password" class="" id="inlineFormPassword" name="password" placeholder="Password:" required>
                        </div>

                        <div class="btnWrapper">
                            <button type="submit" class="">Login</button>
                        </div>
                    </div>
                </form>            
            </div>
        </div>
     `,

    data() {
        return {
            input: {
                username: "",
                password: ""
            },

        }
    },

    methods: {
        login() {
            //console.log(this.$parent.mockAccount.username);
            // debugger;
            if (this.input.username != "" && this.input.password != "") {
                // use the FormData object to collect and send our params
                let formData = new FormData();

                formData.append("username", this.input.username);
                formData.append("password", this.input.password);

                let url = "./includes/index.php?user=true";

                fetch(url, {
                    method: "POST",
                    body: formData
                })
                .then(res => res.json())
                .then(data => {
                    console.log(data);

                    // tell the app that we have a successful login
                    // and store the user object that we retrieved

                    // true below means that authentication worked
                    // data is the user we retrieved from the DB
                    this.$emit("authenticated", true, data[0]);

                    // push the user to the users page
                    this.$router.replace({name: "users"});                    
                })
                .catch((err) => console.log(err));

            } else {
                console.error("inputs can't be blank!");
            }
        }
    }
}