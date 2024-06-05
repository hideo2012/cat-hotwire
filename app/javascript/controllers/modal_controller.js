import { Controller } from "@hotwired/stimulus"
//import  { Modal }  from "bootstrap"
//import  "bootstrap/js/dist/modal"
import  "bootstrap"

// Connects to data-controller="modal"
export default class extends Controller {
  // execute when display HTML Element  
  connect() {
    //this.modal = new Modal(this.element)
    this.modal = new bootstrap.Modal(this.element)
    this.modal.show()
  }

  close(event) {
    if (event.detail.success) {
      this.modal.hide()
    }
  }
} //end of export
