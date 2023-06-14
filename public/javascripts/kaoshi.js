var appdiv = new Vue({
    el: "#app",
    data: {
        suoyouxie: []
    }
});


function douxing(){
    var shuru = document.getElementById("search_bar").value;
    var xiala = document.getElementById("dropdown_menu").value;
    //console.log("shuru: " + shuru + " xiala: " + xiala);

    // Create new AJAX request
    var xhttp = new XMLHttpRequest();
    // Define behaviour for a response
    xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
        //console.log(this.responseText);
        appdiv.suoyouxie = JSON.parse(this.responseText);
    }
    };
    // Initiate connection
    xhttp.open("POST", "nihao.html", true);
    // Set content type to JSON
    xhttp.setRequestHeader("Content-type", "application/json");
    // Send request
    xhttp.send(JSON.stringify({
        bianliangmingzi: shuru,
        leibie: xiala
    }));
}