import { Controller, IndexedMultimap } from "@hotwired/stimulus"
import { sharedMapsInit } from "./utils";


// Connects to data-controller="google-maps"
export default class extends Controller {
  connect() {

    this.initMap();
    window.initMap = this.initMap;
  }

  initMap(){
    if (typeof google === 'undefined') return;
    let map = sharedMapsInit();

    console.log("boob")
    let bikeLayer = new google.maps.BicyclingLayer();
    bikeLayer.setMap(map);



  }



}
