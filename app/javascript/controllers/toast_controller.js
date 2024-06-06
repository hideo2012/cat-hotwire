import { Controller } from "@hotwired/stimulus"
//import { Toast } from "bootstrap"
import  "bootstrap"

// Connects to data-controller="toast"
export default class extends Controller {
  connect() {
    const toast = new bootstrap.Toast(this.element)
    toast.show()
  }
}
