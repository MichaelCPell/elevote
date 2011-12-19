

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


