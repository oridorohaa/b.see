import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter-videos"
export default class extends Controller {
  static targets = [ 'list', 'buttons', 'filterdropdown', 'filter', 'orderdropdown', 'order' ]

  connect() {
    console.log('hi')
  }

  active(e) {
    console.log("CLICK")
    e.currentTarget.classList.toggle("active");

    if (e.currentTarget.classList.contains('active')) {
      // console.log("list target", this.listTarget)
      this.listTarget.style.transform = "translateY(35px)";
      this.buttonsTarget.style.transform = "translateY(60px)";
    } else {
      this.listTarget.style.transform = "translateY(-5px)";
      this.buttonsTarget.style.transform = "translateY(0px)";
    }

    if (this.filterTarget.classList.contains('active') && e.currentTarget === this.filterTarget) {
      console.log("filter")
      this.orderTarget.classList.remove("active")
      this.filterdropdownTarget.style.height = '35px';

    } else {
      this.filterdropdownTarget.style.height = '0px';
    }

    if (this.orderTarget.classList.contains('active') && e.currentTarget === this.orderTarget) {
      console.log("order")
      this.filterTarget.classList.remove("active")
      this.orderdropdownTarget.style.height = '35px';
    } else {
      this.orderdropdownTarget.style.height = '0px';

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
        this.listTarget.style.transform = "translateY(35px)";
        this.buttonsTarget.style.transform = "translateY(60px)";
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
        this.listTarget.style.transform = "translateY(35px)";
        this.buttonsTarget.style.transform = "translateY(60px)";
      })
  }
}
