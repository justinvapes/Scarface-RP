$(function () {
  window.onload = (e) => {
    window.addEventListener("message", (event) => {
      var item = event.data;
      if (item !== undefined && item.type === "server") {
        document.getElementById("notifications").innerHTML +=
          '<div class="notification-biild"><div class="notification" style="border-radius: 35px;"><div class="notification-title">' +
          item.title +
          '</p><div class="notification-title"><p id="notfication-message-content">'+
          "</p></div></div>";
        $(".notification").delay(10000).fadeOut("slow");
      }
    });
  };
});
