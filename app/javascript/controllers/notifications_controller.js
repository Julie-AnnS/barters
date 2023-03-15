import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="insert-in-list"
export default class extends Controller {
  static targets = ["items", "pill"]
  static values = { currentUserId: Number }

  connect() {
    console.log("vhvhv");
    this.channel = createConsumer().subscriptions.create(
      { channel: 'NotificationChannel', id: this.currentUserIdValue },
      { received: message => console.log("message:", message) }
    )
  }
}
