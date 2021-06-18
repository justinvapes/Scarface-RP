$(function () {
  
  window.onload = (e) => {
   
    window.addEventListener("message", (event) => {
      var item = event.data;
      if (item !== undefined && item.type === "police") {
		var message = item.message;
		var messageReplace = message.replace("<", "");
        document.getElementById("notifications").innerHTML +=
          '<div class="notification" style="border-left: 8px #f80a0f solid; border-radius: 10px;"><div class="notification-title"><p id="notfication-title-content">' +
          item.title +
          '</p></div><div class="notification-message"><p id="notfication-message-content">' +
          messageReplace +
          "</p></div></div>";
        $(".notification").delay(5000).fadeOut("slow");
      } else if (item !== undefined && item.type === "server") {
		var message = item.message;
		var messageReplace = message.replace("<", "");
		
        document.getElementById("notifications").innerHTML +=
          '<div class="notification" style="border-left: 8px #f80a0f solid; border-radius: 10px;"><div class="notification-title"><p id="notfication-title-content">' +
          item.title +
          '</p></div><div class="notification-message"><p id="notfication-message-content">' +
          messageReplace +
          "</p></div></div>";
        $(".notification").delay(5000).fadeOut("slow");
      } else if (item !== undefined && item.type === "serverr") {
          var message = item.message;
          var messageReplace = message.replace("<", "");
          
              document.getElementById("notifications").innerHTML +=
                '<div class="notification" style="border-left: 8px #f80a0f solid; border-radius: 10px;"><div class="notification-title"><p id="notfication-title-content">' +
                item.title +
                '</p></div><div class="notification-message"><p id="notfication-message-content">' +
                messageReplace +
                "</p></div></div>";
              $(".notification").delay(15000).fadeOut("slow");
      } else if (item !== undefined && item.type === "custom") {
        var message = item.message;
        var messageReplace = message.replace("<", "");
		
        document.getElementById("notifications").innerHTML +=
          '<div class="notification" style="border-radius: 10px; border-left: 8px ' +
          item.color +
          ' solid;"><div class="notification-title"><p id="notfication-title-content"  style="color: ' + item.color + '; font-size: 1.4vh;"><b>' +
          item.title +
          '</b></p></div><div class="notification-message"><p id="notfication-message-content">' +
          messageReplace +
          "</p></div></div>";

        $(".notification").delay(5000).fadeOut("slow");
      } else if (item !== undefined && item.type === "single") {
        
           
              "</p></div></div>";
              document.getElementById("notifications").innerHTML +=
              '<div class="notification-single" style="border-radius: 10px; border-left: 8px ' +
              item.color + ' solid;"><div class="notification-single-title"><p id="notfication-single-title-content">' +
              item.title +
              '</p></div><div class="notification-message"><p id="notfication-message-content">' +
              "</p></div></div>";

            $(".notification-single").delay(3000).fadeOut("slow");
      }
    });
  };
});
