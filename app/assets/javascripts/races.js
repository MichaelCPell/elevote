$(document).ready( function(){

  $('.btn').click( function(){
    $(this).toggleClass('btn-danger').toggleClass('btn-primary');
    //    Ran into strange errors when trying to do this with a .toggle() function
    if($(this).text() == "Add to Booth"){
      $(this).text("Remove from Booth");
    }else{
    $(this).text("Add to Booth");
    }

  })
});

$(document).ready(function(){

   $(".modal_trigger").click(function(){
    $('#myModal').modal();
   });

});



