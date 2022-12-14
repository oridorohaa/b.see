import { Controller, IndexedMultimap } from "@hotwired/stimulus"
import { sharedMapsInit } from "./utils";

// Connects to data-controller="profile-maps"
export default class extends Controller {


  connect() {
    this.initMap();
    window.initMap = this.initMap;
  }

  initMap() {
    if (typeof google === 'undefined') return;
    let map = sharedMapsInit();
    let map2 = sharedMapsInit();

    if(liked_racks_data && map){
      for(const rack in liked_racks_data){
        let d =liked_racks_data[rack]
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

    if(liked_shops_data && map2){
      for(const shop in liked_shops_data){
        let d = liked_shops_data[shop]
        if(d.lat !== ''){
          if(d.status ==='true'){
            let marker = new google.maps.Marker({
              position: { lat: parseFloat(d.lat), lng: parseFloat(d.long) },
              map2,
              title:"shop",
              url: `/shops/${shop}`,
              icon: {
                  url: "http://maps.google.com/mapfiles/ms/icons/yellow-dot.png"
                }
            })
            marker.setMap(map2);
            google.maps.event.addListener(marker, "click", function() {
              window.location.href = this.url;
            });
          }else{
            let marker = new google.maps.Marker({
              position: { lat: parseFloat(d.lat), lng: parseFloat(d.long) },
              map2,
              title:"shop",
              url: `/shops/${shop}`,
              icon: {
                  url: "http://maps.google.com/mapfiles/ms/icons/pink-dot.png"
                }
            })
            marker.setMap(map2);
            google.maps.event.addListener(marker, "click", function() {
              window.location.href = this.url;
            });
          }
        }
      }
    }
  }

}
