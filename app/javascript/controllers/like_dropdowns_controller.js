import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="like-dropdowns"
export default class extends Controller {
  static targets = ['shopbtn', 'shopdropdown',
                    'videobtn', 'videodropdown',
                    'myrackbtn', 'myrackdropdown',
                    'mylanebtn', 'mylanedropdown',
                    'myshopbtn', 'myshopdropdown',
                    'myvideobtn', 'myvideodropdown',
                    'commentbtn', 'commentdropdown',
                    'reportbtn', 'reportdropdown',
                    'uploadbtn', 'uploaddropdown',
                    'likebtn', 'likedropdown']

  connect() {
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

  myRackDropdown(e) {
    e.currentTarget.classList.toggle('active')
    if (this.myrackbtnTarget.classList.contains('active')) {
      this.myrackdropdownTarget.style.height = "250px";
    } else {
      this.myrackdropdownTarget.style.height = 0;
    }
  }

  myLaneDropdown(e) {
    e.currentTarget.classList.toggle('active')
    if (this.mylanebtnTarget.classList.contains('active')) {
      this.mylanedropdownTarget.style.height = "250px";
    } else {
      this.mylanedropdownTarget.style.height = 0;
    }
  }

  myShopDropdown(e) {
    e.currentTarget.classList.toggle('active')
    if (this.myshopbtnTarget.classList.contains('active')) {
      this.myshopdropdownTarget.style.height = "250px";
    } else {
      this.myshopdropdownTarget.style.height = 0;
    }
  }

  myVideoDropdown(e) {
    e.currentTarget.classList.toggle('active')
    if (this.myvideobtnTarget.classList.contains('active')) {
      this.myvideodropdownTarget.style.height = "250px";
    } else {
      this.myvideodropdownTarget.style.height = 0;
    }
  }

  commentDropdown(e) {
    e.currentTarget.classList.toggle('active')
    if (this.commentbtnTarget.classList.contains('active')) {
      this.commentdropdownTarget.style.height = "250px";
    } else {
      this.commentdropdownTarget.style.height = 0;
    }
  }

  reportDropdown(e) {
    e.currentTarget.classList.toggle('active')
    if (this.reportbtnTarget.classList.contains('active')) {
      this.reportdropdownTarget.style.height = "250px";
    } else {
      this.reportdropdownTarget.style.height = 0;
    }
  }

  uploadDropdown(e) {
    e.currentTarget.classList.toggle('active')
    if (this.uploadbtnTarget.classList.contains('active')) {
      this.uploaddropdownTarget.style.height = "200px";
    } else {
      this.uploaddropdownTarget.style.height = 0;
    }
  }

  likeDropdown(e) {
    e.currentTarget.classList.toggle('active')
    if (this.likebtnTarget.classList.contains('active')) {
      this.likedropdownTarget.style.height = "500px";
    } else {
      this.likedropdownTarget.style.height = 0;
    }
  }
}
