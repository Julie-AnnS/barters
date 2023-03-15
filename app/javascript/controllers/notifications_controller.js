import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="insert-in-list"
export default class extends Controller {
  static targets = ["pill", "items", "number", "removezero"]
  static values = { currentUserId: Number, conversationId: Number }

  connect() {
    console.log(this.conversationIdValue);
    this.channel = createConsumer().subscriptions.create(
      { channel: 'NotificationChannel', id: this.currentUserIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    )
  }

  #insertMessageAndScrollDown(data) {
    console.log(data.notification)
    console.log(data.notification.match(/\/(\d+)\//m))
    this.itemsTarget.insertAdjacentHTML("afterbegin", data.notification)
    this.numberTarget.innerText = Number(this.numberTarget.innerText) + 1
    this.removezeroTarget.innerText = ""
  }
}
