import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="google-maps"
export default class extends Controller {
  connect() {
    "use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var map, infoWindow;
function initMap() {
    map = new google.maps.Map(document.getElementById("map"), {
        center: { lat: 19.432608, lng: -99.133209 },
        zoom: 4,
    });
    new google.maps.Marker({
      position: { lat: 40.730610 , lng: -73.935242 },
      map,
      title:"Marker"
    })
    // latitude: 25.681622, longitude: -100.4081505 mexico city

    infoWindow = new google.maps.InfoWindow();
    var locationButton = document.createElement("button");
    locationButton.textContent = "Pan to Current Location";
    locationButton.classList.add("custom-map-control-button");
    map.controls[google.maps.ControlPosition.TOP_CENTER].push(locationButton);
    locationButton.addEventListener("click", function () {
        // Try HTML5 geolocation.
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (position) {
                var pos = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude,
                };
                infoWindow.setPosition(pos);
                infoWindow.setContent("Location found.");
                infoWindow.open(map);
                map.setCenter(pos);
            }, function () {
                handleLocationError(true, infoWindow, map.getCenter());
            });
        }
        else {
            // Browser doesn't support Geolocation
            handleLocationError(false, infoWindow, map.getCenter());
        }
    });
}
function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(browserHasGeolocation
        ? "Error: The Geolocation service failed."
        : "Error: Your browser doesn't support geolocation.");
    infoWindow.open(map);
}
window.initMap = initMap;

  }
}
