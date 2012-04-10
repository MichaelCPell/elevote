$(document).ready(function(){
    $(".modal_content_trigger").click(function(e) {
        e.preventDefault();
        var myTarget = $(this).attr('href');
        var newHTML = $(myTarget).html();

        $("#modal_active_window").html(newHTML);
    });

    $("#lightbox_close").on("click", function(event){
        event.preventDefault();
        $("#lightbox").hide();
    });

    $("#lightbox_background").on("click", function(event){
        event.preventDefault();
        $("#lightbox").hide();
    });


});







$(function() {
	     $("#dialogDonate").dialog({
             autoOpen: false,
             show: "blind",
             hide: "explode"

         });
       });

       $(function(){
           $("#donateButton").click(function(){
                $("#dialogDonate").dialog("open");
           })
       });





       $(function() {
            $("#dialogVolunteer").dialog({
                autoOpen: false,
                show: "blind",
                hide: "explode"

            });
          });

          $(function(){
              $("#volunteerButton").click(function(){
                   $("#dialogVolunteer").dialog("open");
              })
          });


