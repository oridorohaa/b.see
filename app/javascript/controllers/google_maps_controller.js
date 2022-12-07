import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="google-maps"
export default class extends Controller {
  connect() {
    console.log("hola")
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var map, infoWindow;
    this.initMap();
    window.initMap = this.initMap;


// fetch("/api/bike_racks",{headers: {'Content-Type': 'application/json'}})
//     .then(response => response.json())
//     .then((data)=>console.log(data))
// console.log(bike_rack_data)

// function initMap() {
//   console.log(bike_rack_data)
//   console.log("Hi")

//   map = new google.maps.Map(document.getElementById("map"), {
//     center: { lat: 19.432608, lng: -99.133209 },
//     zoom: 12,
//   });


//   if(bike_rack_data){
//     for(const rack in bike_rack_data){
//     let d = bike_rack_data[rack]
//     if(d.lat !== ''){
//       console.log("map")
//       console.log( parseFloat(d.lat))
//       let marker = new google.maps.Marker({
//         position: { lat: parseFloat(d.lat), lng: parseFloat(d.long) },
//         map,
//         title:"marker"
//       })
//       marker.setMap(map);
//     }
//   }
//   }

//     // new google.maps.Marker({
//     //   position: { lat:74.0060 , lng: 40.7128},
//     //   map,
//     //   title:"Marker"
//     // })
//     // latitude: 25.681622, longitude: -100.4081505 mexico city

//     infoWindow = new google.maps.InfoWindow();
//     var locationButton = document.createElement("button");
//     locationButton.textContent = "Pan to Current Location";
//     locationButton.classList.add("custom-map-control-button");
//     map.controls[google.maps.ControlPosition.TOP_CENTER].push(locationButton);
//     locationButton.addEventListener("click", function () {
//         // Try HTML5 geolocation.
//         if (navigator.geolocation) {
//             navigator.geolocation.getCurrentPosition(function (position) {
//                 var pos = {
//                     lat: position.coords.latitude,
//                     lng: position.coords.longitude,
//                 };
//                 infoWindow.setPosition(pos);
//                 infoWindow.setContent("Location found.");
//                 infoWindow.open(map);
//                 map.setCenter(pos);
//             }, function () {
//                 handleLocationError(true, infoWindow, map.getCenter());
//             });
//         }
//         else {
//             // Browser doesn't support Geolocation
//             handleLocationError(false, infoWindow, map.getCenter());
//         }
//     });
// }
// function handleLocationError(browserHasGeolocation, infoWindow, pos) {
//     infoWindow.setPosition(pos);
//     infoWindow.setContent(browserHasGeolocation
//         ? "Error: The Geolocation service failed."
//         : "Error: Your browser doesn't support geolocation.");
//     infoWindow.open(map);
// }
// window.initMap = initMap;

  }
  initMap() {
    var map = new google.maps.Map(document.getElementById("map"), {
        zoom: 14,
        center: { lat: 42.3726399, lng: -71.1096528 },
    });
    var bikeLayer = new google.maps.BicyclingLayer();
    bikeLayer.setMap(map);
}
}
