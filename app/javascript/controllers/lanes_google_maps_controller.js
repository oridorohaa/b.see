import { Controller, IndexedMultimap } from "@hotwired/stimulus"
import { sharedMapsInit } from "./utils";


// Connects to data-controller="google-maps"
export default class extends Controller {
  connect() {

    this.initMap();
    window.initMap = this.initMap;
  }

  initMap(){
   console.log( "-----------------------insdide initMap LAANES")
    if (typeof google === 'undefined') return;
    let map = sharedMapsInit();





    for(const lane in lanes_data){
      let l = lanes_data[lane]
      if(l.status ==='true'){
        const flightPath = new google.maps.Polyline({
          path: l.coords,
          url:`/lanes/${lane}`,
          geodesic: true,
          strokeColor: "#F2FF3E",
          strokeOpacity: 2.0,
          strokeWeight: 3,
        });

        flightPath.setMap(map);
        google.maps.event.addListener(flightPath, "click", function() {
          window.location.href = this.url;
        });
      }else{
        const flightPath = new google.maps.Polyline({
          path: l.coords,
          url:`/lanes/${lane}`,
          geodesic: true,
          strokeColor: "#F2FF",
          strokeOpacity: 2.0,
          strokeWeight: 3,
        });

        flightPath.setMap(map);
        google.maps.event.addListener(flightPath, "click", function() {
          window.location.href = this.url;
        });
      }
    }


  }


}
