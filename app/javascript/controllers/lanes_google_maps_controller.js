import { Controller, IndexedMultimap } from "@hotwired/stimulus"
import { sharedMapsInit } from "./utils";


// Connects to data-controller="google-maps"
// var axios = require('axios');
export default class extends Controller {
  connect() {

    this.initMap();
    window.initMap = this.initMap;
  }

  // initMap(){
  //   if (typeof google === 'undefined') return;
  //   let map = sharedMapsInit();

  //   let bikeLayer = new google.maps.BicyclingLayer();
  //   bikeLayer.setMap(map);



  //     var config = {
  //       method: 'get',
  //       url: 'https://maps.googleapis.com/maps/api/directions/json?origin=Toronto&destination=Montreal&avoid=highways&mode=bicycling&key=YOUR_API_KEY',
  //       headers: { }
  //     };

  //     axios(config)
  //     .then(function (response) {
  //       console.log(JSON.stringify(response.data));
  //     })
  //     .catch(function (error) {
  //       console.log(error);
  //     });


  // }



}
