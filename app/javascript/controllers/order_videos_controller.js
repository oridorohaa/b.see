import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="order-videos"
export default class extends Controller {
  static target = ["list"]

  connect() {
    console.log('hi')
  }
}
