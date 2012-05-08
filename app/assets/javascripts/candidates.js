$(document).ready(function(){

  $(".display_my_contents_trigger").click( function(){
    var target = $(this).attr('href');
    var new_text = $(target).html();
      $("#display_area").html(new_text);
  })

});