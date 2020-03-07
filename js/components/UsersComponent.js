export default {
    template: `
    <div class="container">
        <div class="">
            <div class="">
                <h1 class="user-message">{{ message }}</h1>
            </div>
        </div>
    </div>
    `,

    data() {
        return {
            message: "Who's Using Roku?",
            userList: []
        }
    }
}