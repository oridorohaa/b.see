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


    // var axios = require('axios');

    // var config = {
    //   method: 'get',
    //   url: 'https://maps.googleapis.com/maps/api/directions/json?origin=Toronto&destination=Montreal&key=AIzaSyBKClGaUcZWanoyZGta_wrGZh8t-5q6pu8',
    //   headers: { "Access-Control-Allow-Origin": "*",
    //   "Access-Control-Allow-Methods": "DELETE, POST, GET, OPTIONS",
    //   "Access-Control-Allow-Headers": "Content-Type, Authorization, X-Requested-With"
    // }
    // };

    // axios(config)
    // .then(function (response) {
    //   console.log(JSON.stringify(response.data));
    // })
    // .catch(function (error) {
    //   console.log(error);
    // });
  }




}
