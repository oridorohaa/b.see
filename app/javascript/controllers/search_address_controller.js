import { Controller, IndexedMultimap } from "@hotwired/stimulus"



export default class extends Controller {

  connect() {
    console.log("inside address controller")
    window.initAuto = function (map){
      console.log(map, "SEARCH")
      const seachAddress = document.querySelector(".search-input")
      const searchLat = document.querySelector(".lat")
      const searchLong = document.querySelector(".long")
      const autocomplete = new google.maps.places.Autocomplete(seachAddress)
      const searchBtn = document.querySelector(".fa-magnifying-glass")
      let place

      autocomplete.addListener("place_changed", function(){
        place =autocomplete.getPlace().geometry.location
        console.log(autocomplete.getPlace());
        searchLat.value = autocomplete.getPlace().geometry.location.lat()
        console.log("LAT",searchLat.value)
        searchLong.value = autocomplete.getPlace().geometry.location.lng()
        console.log("LONG", searchLong.value)
      })

      console.log(searchBtn)
      console.log("map", map)
      searchBtn.addEventListener("click", ()=>{
        map.setCenter(place)
        map.setZoom(18)
      })
      // if(searchLat.val !=='' && searchLong.value!==''){
      //   console.log("working")
      //   map.center.lat = searchLat.value
      //   map.center.lng = searchLong.value
      //   map.zoom = 18
      // }
    }
  }

}
