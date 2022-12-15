import { Controller, IndexedMultimap } from "@hotwired/stimulus"
import { sharedMapsInit } from "./utils";

// Connects to data-controller="profile-maps"
export default class extends Controller {
  static targets = ['rackmap', 'lanemap', 'shopmap']

  connect() {
    this.initMap();
    // this.initMap2();
    // this.initMap3();
    window.initMap = this.initMap;
    // window.initMap2 = this.initMap2;
    // window.initMap3 = this.initMap3;
  }

  initMap() {
    if (typeof google === 'undefined') return;
    const maps = sharedMapsInit();
    for (let i = 0; i < maps.length; i++) {
      let map = maps[i];

      if (i === 0) {
        if (liked_racks_data && map) {
          console.log(liked_racks_data)

          for (const rack in liked_racks_data){
            console.log(rack)
            let d = liked_racks_data[rack]
            console.log(d)
            if (d.lat !== ''){
              if (d.status ==='true'){
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

      if (i === 1) {
        console.log("hi from 1");
        for(const lane in liked_lanes_data){
          let l = liked_lanes_data[lane]
          if(l.status ==='true'){
            const flightPath = new google.maps.Polyline({
              path: l.coords,
              url:`/lanes/${lane}`,
              geodesic: true,
              strokeColor: "#F2FF3E",
              strokeOpacity: 2.0,
              strokeWeight: 1,
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
              strokeWeight: 1,
            });

            flightPath.setMap(map);
            google.maps.event.addListener(flightPath, "click", function() {
              window.location.href = this.url;
            });
          }
        }
      }

      if (i === 2) {
        if(liked_shops_data && map) {
          for(const shop in liked_shops_data){
            let d = liked_shops_data[shop]
            if(d.lat !== ''){
              if(d.status ==='true'){
                let marker = new google.maps.Marker({
                  position: { lat: parseFloat(d.lat), lng: parseFloat(d.long) },
                  map,
                  title: "shop",
                  url: `/shops/${shop}`,
                  icon: {
                      url: "http://maps.google.com/mapfiles/ms/icons/yellow-dot.png"
                    }
                })
                marker.setMap(map);
                google.maps.event.addListener(marker, "click", function() {
                  window.location.href = this.url;
                });
              } else {
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
      }
    }
  }

  displayRackMap(e) {
    e.currentTarget.classList.toggle('active')
    if (e.currentTarget.classList.contains('active')) {
      this.rackmapTarget.style.height = '590px';
    } else {
      this.rackmapTarget.style.height = 0;
    }
  }

  displayLaneMap(e) {
    e.currentTarget.classList.toggle('active')
    if (e.currentTarget.classList.contains('active')) {
      this.lanemapTarget.style.height = '590px';
    } else {
      this.lanemapTarget.style.height = 0;
    }
  }

  displayShopMap(e) {
    e.currentTarget.classList.toggle('active')
    if (e.currentTarget.classList.contains('active')) {
      this.shopmapTarget.style.height = '590px';
    } else {
      this.shopmapTarget.style.height = 0;
    }
  }
}
