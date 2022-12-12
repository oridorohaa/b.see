import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="like-dropdowns"
export default class extends Controller {
  static targets = ['shopbtn', 'shopdropdown', 'videobtn', 'videodropdown']

  connect() {
    console.log('hi')
  }

  shopDropdown(e) {
    e.currentTarget.classList.toggle('active')
    if (this.shopbtnTarget.classList.contains('active')) {
      this.shopdropdownTarget.style.height = "250px";
    } else {
      this.shopdropdownTarget.style.height = 0;
    }
  }

  videoDropdown(e) {
    e.currentTarget.classList.toggle('active')
    if (this.videobtnTarget.classList.contains('active')) {
      this.videodropdownTarget.style.height = "250px";
    } else {
      this.videodropdownTarget.style.height = 0;
    }
  }
}
