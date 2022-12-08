import { Controller, IndexedMultimap } from "@hotwired/stimulus"
import { sharedMapsInit } from "./utils";


console.log('hh')
// Connects to data-controller="google-maps"
export default class extends Controller {
  connect() {

    this.initMap();
    console.log('here')
    window.initMap = this.initMap;
  }

  initMap(){
    if (typeof google === 'undefined') return;
    let map = sharedMapsInit();
    console.log('hi')
    //custom code
    if(shop_data && map){
      console.log(shop_data)
      for(const shop in shop_data){
      let d = shop_data[shop]
      if(d.lat !== ''){
        console.log("map")
        console.log( parseFloat(d.lat))
        let marker = new google.maps.Marker({
          position: { lat: parseFloat(d.lat), lng: parseFloat(d.long) },
          map,
          title:"shop",
          url: `/shops/${shop}`,
          icon: {
            url: "http://maps.google.com/mapfiles/ms/icons/yellow-dot.png"
          }
        })
        marker.setMap(map);
        google.maps.event.addListener(marker, "click", function() {
          window.location.href = this.url;
        });
      }
      }

    }

  }




}
