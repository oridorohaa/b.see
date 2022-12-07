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

    initMap()

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
