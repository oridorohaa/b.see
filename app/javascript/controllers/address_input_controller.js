import { Controller, IndexedMultimap } from "@hotwired/stimulus"
import { sharedMapsInit } from "./utils";


export default class extends Controller {

  connect() {
    const inputShop = document.querySelector("[id$='_address']")
    const inputLatShop = document.querySelector("[id$='_latitude']")
    const inputLongShop = document.querySelector("[id$='_longitude']")
    const autocomplete = new google.maps.places.Autocomplete(inputShop)

    autocomplete.addListener("place_changed", function(){
      console.log(autocomplete.getPlace());
      inputLatShop.value = autocomplete.getPlace().geometry.location.lat()
      console.log(inputLatShop.value)
      inputLongShop.value = autocomplete.getPlace().geometry.location.lng()
      console.log(inputLongShop.value)
    })
  }


}
