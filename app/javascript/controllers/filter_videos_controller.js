import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter-videos"
export default class extends Controller {
  static targets = [ 'list', 'buttons' ]

  connect() {
    console.log('hi')
  }

  active(e) {
    e.currentTarget.classList.toggle("active");
    this.listTarget.style.transform = "translateY(35px)";
    this.buttonsTarget.style.transform = "translateY(30px)";
  }
}
