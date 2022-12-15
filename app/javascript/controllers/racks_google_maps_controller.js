import { Controller, IndexedMultimap } from "@hotwired/stimulus"
import { sharedMapsInit } from "./utils";


// Connects to data-controller="google-maps"
export default class extends Controller {
  connect() {

    this.initMap();
    window.initMap = this.initMap;
    console.log('hi')
  }

  initMap(){
    if (typeof google === 'undefined') return;
    let map = sharedMapsInit()[0];

    //custom code
    if(bike_rack_data && map){
      console.log(bike_rack_data)
      for(const rack in bike_rack_data){
        let d = bike_rack_data[rack]
        if(d.lat !== ''){
          if(d.status ==='true'){
            let marker = new google.maps.Marker({
              position: { lat: parseFloat(d.lat), lng: parseFloat(d.long) },
              map,
              title:"rack",
              url: `/bike_racks/${rack}`,
              icon: {
                  url: "http://maps.google.com/mapfiles/ms/icons/yellow-dot.png"
                }
            })
            marker.setMap(map);
            google.maps.event.addListener(marker, "click", function() {
              window.location.href = this.url;
            });
          }else{
            let marker = new google.maps.Marker({
              position: { lat: parseFloat(d.lat), lng: parseFloat(d.long) },
              map,
              title:"rack",
              url: `/bike_racks/${rack}`,
              icon: {
                  url: "http://maps.google.com/mapfiles/ms/icons/pink-dot.png"
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



}
