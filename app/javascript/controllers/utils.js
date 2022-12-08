
const sharedMapsInit = function(){

    // initAuto()
    let mapDiv =document.getElementById("map")
    let map = null
    if (typeof google !== "undefined" && mapDiv){
      const styledMapType = new google.maps.StyledMapType(
      [
        // { elementType: "geometry", stylers: [{ color: "#ebe3cd" }] },
        { elementType: "labels.text.fill", stylers: [{ color: "#523735" }] },
        { elementType: "labels.text.stroke", stylers: [{ color: "#f5f1e6" }] },
        {
          featureType: "administrative",
          elementType: "geometry.stroke",
          stylers: [{ color: "#c9b2a6" }],
        },
        {
          featureType: "administrative.land_parcel",
          elementType: "geometry.stroke",
          stylers: [{ color: "#dcd2be" }],
        },
        {
          featureType: "administrative.land_parcel",
          elementType: "labels.text.fill",
          stylers: [{ color: "#ae9e90" }],
        },
        {
          featureType: "landscape.natural",
          elementType: "geometry",
          stylers: [{ color: "#dfd2ae" }],
        },
        {
          featureType: "poi",
          elementType: "geometry",
          stylers: [{ color: "#dfd2ae" }],
        },
        {
          featureType: "poi",
          elementType: "labels.text.fill",
          stylers: [{ color: "#93817c" }],
        },
        {
          featureType: "poi.park",
          elementType: "geometry.fill",
          stylers: [{ color: "#a5b076" }],
        },
        {
          featureType: "poi.park",
          elementType: "labels.text.fill",
          stylers: [{ color: "#447530" }],
        },
        // {
        //   featureType: "road",
        //   elementType: "geometry",
        //   stylers: [{ color: "#f5f1e6" }],
        // },
        {
          featureType: "road.arterial",
          elementType: "geometry",
          stylers: [{ color: "#fdfcf8" }],
        },
        {
          featureType: "road.highway",
          elementType: "geometry",
          stylers: [{ color: "#f8c967" }],
        },
        {
          featureType: "road.highway",
          elementType: "geometry.stroke",
          stylers: [{ color: "#e9bc62" }],
        },
        {
          featureType: "road.highway.controlled_access",
          elementType: "geometry",
          stylers: [{ color: "#e98d58" }],
        },
        {
          featureType: "road.highway.controlled_access",
          elementType: "geometry.stroke",
          stylers: [{ color: "#db8555" }],
        },
        {
          featureType: "road.local",
          elementType: "labels.text.fill",
          stylers: [{ color: "#806b63" }],
        },
        {
          featureType: "transit.line",
          elementType: "geometry",
          stylers: [{ color: "#dfd2ae" }],
        },
        {
          featureType: "transit.line",
          elementType: "labels.text.fill",
          stylers: [{ color: "#8f7d77" }],
        },
        {
          featureType: "transit.line",
          elementType: "labels.text.stroke",
          stylers: [{ color: "#ebe3cd" }],
        },
        {
          featureType: "transit.station",
          elementType: "geometry",
          stylers: [{ color: "#dfd2ae" }],
        },
        {
          featureType: "water",
          elementType: "geometry.fill",
          stylers: [{ color: "#b9d3c2" }],
        },
        {
          featureType: "water",
          elementType: "labels.text.fill",
          stylers: [{ color: "#92998d" }],
        },
      ],
      { name: "Styled Map" }
  );


      map = new google.maps.Map(mapDiv, {
        center: { lat: 19.432608, lng: -99.133209 },
        zoom: 12,
      });


      map.mapTypes.set("styled_map", styledMapType);
      map.setMapTypeId("styled_map");
    }


    // if(bike_rack_data && map){
    //   console.log("bike rack data defined")
    //   for(const rack in bike_rack_data){
    //   let d = bike_rack_data[rack]
    //   if(d.lat !== ''){
    //     console.log("map")
    //     console.log( parseFloat(d.lat))
    //     let marker = new google.maps.Marker({
    //       position: { lat: parseFloat(d.lat), lng: parseFloat(d.long) },
    //       map,
    //       title:"rack",
    //       url: `/bike_racks/${rack}`,
    //       icon: {
    //           url: "http://maps.google.com/mapfiles/ms/icons/yellow-dot.png"
    //         }

    //     })
    //     marker.setMap(map);
    //     google.maps.event.addListener(marker, "click", function() {
    //       window.location.href = this.url;
    //     });
    //   }
    //   }
    // }

    // if(shop_data && map){
    //   console.log(shop_data)
    //   for(const shop in shop_data){
    //   let d = shop_data[shop]
    //   if(d.lat !== ''){
    //     console.log("map")
    //     console.log( parseFloat(d.lat))
    //     let marker = new google.maps.Marker({
    //       position: { lat: parseFloat(d.lat), lng: parseFloat(d.long) },
    //       map,
    //       title:"shop",
    //       url: `/shops/${shop}`,
    //       icon: {
    //         url: "http://maps.google.com/mapfiles/ms/icons/yellow-dot.png"
    //       }
    //     })
    //     marker.setMap(map);
    //     google.maps.event.addListener(marker, "click", function() {
    //       window.location.href = this.url;
    //     });
    //   }
    //   }

    // }



    // if(map){
    //   // if(lane_page){
    //   //   if (!bikeLayer){
    //   //    bikeLayer = new google.maps.BicyclingLayer();
    //   //   }
    //   //   bikeLayer.setMap(map);
    //   // } else{
    //     // if(bikeLayer){
    //     //   bikeLayer.setMap(null);
    //     // }
    //   }

      let infoWindow = new google.maps.InfoWindow();
      var locationButton = document.createElement("button");
      locationButton.textContent = "Pan to Current Location";
      locationButton.classList.add("custom-map-control-button");
      map.controls[google.maps.ControlPosition.TOP_CENTER].push(locationButton);
      locationButton.addEventListener("click", function () {
          // Try HTML5 geolocation.
          if (navigator.geolocation) {
              navigator.geolocation.getCurrentPosition(function (position) {
                  var pos = {
                      lat: position.coords.latitude,
                      lng: position.coords.longitude,
                  };
                  infoWindow.setPosition(pos);
                  infoWindow.setContent("Location found.");
                  infoWindow.open(map);
                  map.setCenter(pos);
              }, function () {
                  handleLocationError(true, infoWindow, map.getCenter());
              });
          }
          else {
              // Browser doesn't support Geolocation
              handleLocationError(false, infoWindow, map.getCenter());
          }
      });
    return map
  }

    function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation
            ? "Error: The Geolocation service failed."
            : "Error: Your browser doesn't support geolocation.");
        infoWindow.open(map);
    }


export { sharedMapsInit }