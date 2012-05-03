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




