$(document).ready(function(){
    window.addEventListener('message', function( event ) {            
      if (event.data.action == 'open') {
        $('.container').css("display", "block");
      } else if (event.data.action == 'close') {
        $('.container').css("display", "none");
      } else if (event.data.action == 'set') {
        $('#name').html('<p id="name">Lizenzen von <b>' + event.data.name + '</b></p>');
        
        for (let index = 0; index < event.data.pos.length; index++) {
          $('.content-elem[data-type="' + event.data.pos[index].type + '"] p').html("<p>" + event.data.pos[index].label + "<br><span style='color: red;'>Nicht Vorhanden</span></p>");    
          $('.content-elem[data-type="' + event.data.pos[index].type + '"] i').css("color", "red");      
          $('.content-elem[data-type="' + event.data.pos[index].type + '"] span').css("color", "red");  
        }

        for (let index = 0; index < event.data.lizenz.length; index++) {
          $('.content-elem[data-type="' + event.data.lizenz[index].type + '"] p').html("<p>" + event.data.lizenz[index].label + "<br><span style='color: green;'>Vorhanden</span></p>");    
          $('.content-elem[data-type="' + event.data.lizenz[index].type + '"] i').css("color", "green");      
          $('.content-elem[data-type="' + event.data.lizenz[index].type + '"] span').css("color", "green");  
        }
      }
    });

    $(document).keyup(function(e) {
      if (e.key === "Escape") {
        $('.container').css('display', 'none');
          $.post('http://scarface_lizenzen/escape', JSON.stringify({}));
      }
    });
});