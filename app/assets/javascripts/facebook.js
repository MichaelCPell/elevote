

// Load the SDK Asynchronously
(function(d){
    var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement('script'); js.id = id; js.async = true;
    js.src = "//connect.facebook.net/en_US/all.js";
    ref.parentNode.insertBefore(js, ref);
}(document));


// Init the SDK upon load
window.fbAsyncInit = function() {
    FB.init({
        appId      : '181378665303836', // App ID
//        channelUrl : '//'+window.location.hostname+'/channel', // Path to your Channel File
        status     : true, // check login status
        cookie     : true, // enable cookies to allow the server to access the session
        xfbml      : true  // parse XFBML
    });
};



// listen for and handle auth.statusChange events

$(document).ready(function(){


//    The Line Below has been commented out because the auth-loginlink does not exist anymore, and is giving the DOM trouble
//    document.getElementById('auth-loginlink').addEventListener('click', function(e){


        $("#fb-login-link").click(function(){


          FB.login(function(response) {
//            if (response.authResponse) {
//                FB.api('/me', function(response) {
//                  alert(response.name);
//                });
//            }

             window.location.replace("/auth/facebook/callback");

          });



        });


});



//$(document).ready(function(){
//    $("#cat").click( function(){
//        alert("blah");
//
//       FB.api('/me', function(response){
//            $("#cat").html(response.name);
//       })
//
//    });
//});
