const vueinst = new Vue({
    el: "#app",
    data:{
        choose: "Do you want to join us?",
        club:"Do you want to join the club",
        top_menu:
    [{title:"Home",url:'/'},
    {title:"Events",url:'/events'},
    {title:"Clubs",url:'/clubs'},
    {title:"About",url:'/about'}],
        login_info: {
            username: "",
            password: ""
        },

        }
});

const logo = document.getElementById('logo');
logo.addEventListener('click', () => {
    window.location.href = '/main.html';});

const login = document.getElementById("login");
login.addEventListener("click", () => {
    window.location.href = "/login.html";});

const signup = document.getElementById("sign_up");
signup.addEventListener("click", () => {
    window.location.href = "/signup.html";});

var xmlhttp = new XMLHttpRequest();


//AJAX
let xhr = new XMLHttpRequest();

xhr.open('GET','localhost:8080/main.html', true);


/*vueints  {


    data:{
        login_info: {
            "usrname: "",
            "password:;;
        }
    },

    methods:{

    }
}
*/

const clubList = document.getElementById('clubs');

clubList.addEventListener('click', event => {
  const target = event.target;
  if (target.classList.contains('club_logo')) {
    const club = target.dataset.club;
    window.location.href = `details/${club}_detail.html`;
  }
});



document.querySelector('.close-btn').addEventListener('click', function() {
    document.querySelector('.warning-box').style.display = 'none';
});

function sign_up_status() {
    if (confirm("You have signed up successfully,back to homepage")) {
      window.location.href = "main.html";
    }
  }

function you_need_to_login_first(){
    if (confirm("Please login first")) {
        window.location.href = "/login.html";
      }

}

var board = document.querySelector('.board');
var details = document.querySelectorAll('.details');

for (var i = 0; i < details.length; i++) {
  var detail = details[i];
  board.appendChild(detail.cloneNode(true));}


