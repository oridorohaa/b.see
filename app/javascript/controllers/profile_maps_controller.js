import { Controller, IndexedMultimap } from "@hotwired/stimulus"
import { sharedMapsInit } from "./utils";

// Connects to data-controller="profile-maps"
export default class extends Controller {
  static targets = ['map1', 'map2']

  connect() {
    this.initMap();
    window.initMap = this.initMap;
  }

  initMap() {
    if (typeof google === 'undefined') return;
    let map = sharedMapsInit()[0];

    if(liked_racks_data && map) {
      for(const rack in liked_racks_data){
        let d = liked_racks_data[rack]
        console.log("D:")
        console.log(d)
        if(d.lat !== ''){
          if(d.status ==='true'){
            console.log("OWO")
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
            console.log(marker);
            google.maps.event.addListener(marker, "click", function() {
              window.location.href = this.url;
            });
          } else {
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
