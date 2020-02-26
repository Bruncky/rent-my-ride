import "bootstrap";
import "../plugins/flatpickr"

$(".changeit").on("submit", function(){
    setTimeout(function() {
      location.href='http://localhost:3000/users/12';
    }, 10)
  }

