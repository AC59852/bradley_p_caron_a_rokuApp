export default {
    template: `
        <div class="container">
            <div class="loginWrapper">
                <h1 class="title">Login</h1>
                

                <form>
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
                            <button @click.prevent="login()" type="submit" class="">Login</button>
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

            if (this.input.username != "" && this.input.password != "") {
                // fetch the user from the DB
                // generate the form data
                let formData = new FormData();

                formData.append("username", this.input.username);
                formData.append("password", this.input.password);

                let url = `./admin/admin_login.php`;

                fetch(url, {
                    method: 'POST',
                    body: formData
                })
                    .then(res => res.json())
                    .then(data => {
                        if (typeof data != "object") { // means that we're not getting a user object back
                            console.warn(data);
                            // just for testing
                            alert("authentication failed, please try again");
                        } else {
                            this.$emit("authenticated", true, data);
                            this.$router.replace({ name: "profiles" });
                        }
                    })
                    .catch(function (error) {
                        console.log(error);
                    });
            } else {
                console.log("A username and password must be present");
            }
        }
    }
}