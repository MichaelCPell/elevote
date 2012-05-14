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
        appId      : '205528859544975', // App ID for Elevote on Heroku
//        appId      : '181378665303836', // App ID for Elevote on Local
//        channelUrl : '//'+window.location.hostname+'/channel', // Path to your Channel File
        status     : true, // check login status
        cookie     : true, // enable cookies to allow the server to access the session
        xfbml      : true  // parse XFBML
    });
};

$(document).ready(function(){
  $("#fb-login-link").click(function(){
    FB.login(function(response) {
       window.location.replace("/auth/facebook/callback");
    });
  });
});