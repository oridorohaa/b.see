import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter-videos"
export default class extends Controller {
  static targets = [ 'list', 'buttons', 'filterdropdown', 'filter', 'orderdropdown', 'order' ]

  connect() {
    console.log('hi')
  }

  active(e) {
    e.currentTarget.classList.toggle("active");
    if (e.currentTarget.classList.contains('active')) {
      this.listTarget.style.transform = "translateY(35px)";
      this.buttonsTarget.style.transform = "translateY(30px)";
    } else {
      this.listTarget.style.transform = "translateY(-5px)";
      this.buttonsTarget.style.transform = "translateY(0px)";
    }

    if (this.filterTarget.classList.contains('active')) {
      this.filterdropdownTarget.style.height = '35px';
    } else {
      this.filterdropdownTarget.style.height = 0;
    }

    if (this.orderTarget.classList.contains('active')) {
      this.orderdropdownTarget.style.height = '35px';
    } else {
      this.orderdropdownTarget.style.height = 0;
    }
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
