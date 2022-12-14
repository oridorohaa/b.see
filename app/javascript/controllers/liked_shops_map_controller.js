import { Controller, IndexedMultimap } from "@hotwired/stimulus"
import { sharedMapsInit } from "./utils";

// Connects to data-controller="liked-shops-map"
export default class extends Controller {
  static targets = ['map']

  connect() {
    this.initMap();
    window.initMap = this.initMap;
  }

  initMap() {
    if (typeof google === 'undefined') return;
    let map = sharedMapsInit();


    if(liked_shops_data && map){
      for(const shop in liked_shops_data){
        let d = liked_shops_data[shop]
        if(d.lat !== ''){
          if(d.status ==='true'){
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
          }else{
            let marker = new google.maps.Marker({
              position: { lat: parseFloat(d.lat), lng: parseFloat(d.long) },
              map,
              title:"shop",
              url: `/shops/${shop}`,
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
  };

  displayMap(e) {
    e.currentTarget.classList.toggle('active')
    if (e.currentTarget.classList.contains('active')) {
      this.mapTarget.style.height = '590px';
    } else {
      this.mapTarget.style.height = 0;
    }
  }
}
