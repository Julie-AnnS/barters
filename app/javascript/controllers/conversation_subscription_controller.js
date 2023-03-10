import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="chatroom-subscription"
export default class extends Controller {
  static targets = [ 'messages' ]
  static values = { conversationId: Number }

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: 'ConversationChannel', id: this.conversationIdValue },
      { received: message => this.#insertMessageAndScrollDown(message) }
    )
  }

  #insertMessageAndScrollDown(message) {
    console.log("what")
    this.messagesTarget.insertAdjacentHTML('beforeend', message)
    window.scrollTo(0, document.body.scrollHeight, {top: 0, behavior: 'smooth'})
  }

  resetForm(event) {
    event.target.reset()
  }

  disconnect() {
    this.channel.unsubscribe()
  }
}
