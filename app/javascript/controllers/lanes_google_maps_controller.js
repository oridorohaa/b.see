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

    let bikeLayer = new google.maps.BicyclingLayer();
    bikeLayer.setMap(map);

    lanes_data.forEach((lane)=>{

      const flightPath = new google.maps.Polyline({
        path: lane,
        url:"/menu",
        geodesic: true,
        strokeColor: "#F2FF3E",
        strokeOpacity: 2.0,
        strokeWeight: 3,
      });

      flightPath.setMap(map);
    })


  }




}
