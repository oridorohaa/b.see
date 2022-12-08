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

  recent(e) {
    e.currentTarget.classList.toggle("active")

    fetch('/recent', {
      headers: {"Accept": "text/plain"}
    })
      .then(response => response.text())
      .then((data) => {
        console.log(data)
        this.listTarget.outerHTML = data
      })
  }

  liked(e) {
    e.currentTarget.classList.toggle("active")

    fetch('/most_liked', {
      headers: {"Accept": "text/plain"}
    })
      .then(response => response.text())
      .then((data) => {
        console.log(data)
        this.listTarget.outerHTML = data
      })
  }
}
