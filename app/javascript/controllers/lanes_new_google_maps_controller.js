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

    const drawingManager = new google.maps.drawing.DrawingManager({
      drawingMode: google.maps.drawing.OverlayType.POLYLINE,
      drawingControl: true,
      drawingControlOptions: {
        position: google.maps.ControlPosition.TOP_CENTER,
        drawingModes: [
          google.maps.drawing.OverlayType.MARKER,
          google.maps.drawing.OverlayType.CIRCLE,
          google.maps.drawing.OverlayType.POLYGON,
          google.maps.drawing.OverlayType.POLYLINE,
          google.maps.drawing.OverlayType.RECTANGLE,
        ],
      },
      markerOptions: {
        icon: "https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png",
      },
      circleOptions: {
        fillColor: "#F5FF",
        fillOpacity: 1,
        strokeWeight: 7,
        clickable: false,
        editable: true,
        zIndex: 1,
      },
      polylineOptions:{
        strokeColor: "#F5FF",
        strokeWeight: 7,
      }
    });

    drawingManager.setMap(map);


    let lane_coords_input = document.getElementById("lane_coords")
    google.maps.event.addDomListener(drawingManager, 'overlaycomplete', function(event){

      console.log(event)
      let coords = []
      event.overlay.getPath().getArray().forEach((marker)=>{
        coords.push({lat:marker.lat(), lng:marker.lng()})
      })
      console.log(coords)
      lane_coords_input.value = JSON.stringify(coords)
      console.log(lane_coords_input.value)
    });
  }
}
