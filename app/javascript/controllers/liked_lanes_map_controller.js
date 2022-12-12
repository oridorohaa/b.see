import { Controller, IndexedMultimap } from "@hotwired/stimulus"
import { sharedMapsInit } from "./utils";

// Connects to data-controller="liked-lanes-map"
export default class extends Controller {
  connect() {
    this.initMap();
    window.initMap = this.initMap;
  }

  initMap() {
    if (typeof google === 'undefined') return;
    let map = sharedMapsInit();
  }

  displayMap(e) {
    e.currentTarget.classList.toggle('active')
    if (e.currentTarget.classList.contains('active')) {
      this.mapTarget.style.height = '590px';
    } else {
      this.mapTarget.style.height = 0;
    }
  }
}
