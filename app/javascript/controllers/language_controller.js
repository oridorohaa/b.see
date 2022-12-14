import { Controller } from "@hotwired/stimulus";

export default class extends Controller{
  static targets = ['globe', 'dropdown', 'english', 'spanish', 'rack', 'lane', 'shop', 'video']

  connent(){
    console.log("Language connect on")
  }
  action(e){
    console.log("inside")
    e.currentTarget.classList.toggle("active")
    if(e.currentTarget.classList.contains("active") && e.currentTarget === this.globeTarget){
      this.dropdownTarget.style.height = "40px";
      this.dropdownTarget.style.display = 'block'

    }else{
      this.dropdownTarget.style.display = 'none'
    }
  }

  language(e){
    e.currentTarget.classList.toggle("language")
    if(e.currentTarget.classList.contains("language") && e.currentTarget === this.spanishTarget){
      console.log("Spanish")
      this.rackTarget.innerHTML = "Biciestacionamiento"
      this.laneTarget.innerHTML = "Carril"
      this.shopTarget.innerHTML = "Tienda"
      this.videoTarget.innerHTML = "Video"
    }
    if(e.currentTarget.classList.contains("language") && e.currentTarget === this.englishTarget){
      console.log("English")
      this.rackTarget.innerHTML = "Racks"
      this.laneTarget.innerHTML = "Lanes"
      this.shopTarget.innerHTML = "Shops"
      this.videoTarget.innerHTML = "Videos"
    }
  }
}
