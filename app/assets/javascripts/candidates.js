$(document).ready(function(){

  $(".display_my_contents_trigger").click( function(){
    var target = $(this).attr('href');
    var new_text = $(target).html();
      $("#display_area").html(new_text);
      $(".best_in_place").best_in_place();

      $(".btn-submit").click( function(){
        new_text = $("#input-main-text").val();
        $("#category-main-text").html(new_text);

      })

  });





});