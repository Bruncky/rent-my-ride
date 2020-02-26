import "bootstrap";
import "../plugins/flatpickr"

import "../plugins/mapbox"
import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

$(".changeit").on("submit", function(){
    setTimeout(function() {
      location.href='http://localhost:3000/users/12';
    }, 10)
  }
