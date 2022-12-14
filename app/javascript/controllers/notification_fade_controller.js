import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="notification-fade"
export default class extends Controller {
  connect() {
    setTimeout(() => {this.fadeNotice()}, 4000)
    setTimeout(() => {this.hideNotice()}, 5000)
  }

  fadeNotice() {
    document.querySelector('.notice').classList.add('fade')
  }

  hideNotice() {
    document.querySelector('.notice').classList.add('hide')
  }
}
