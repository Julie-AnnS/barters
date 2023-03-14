import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="chatroom-subscription"
export default class extends Controller {
  static targets = [ 'messages' ]
  static values = { conversationId: Number, currentUserId: Number }

  connect() {
    console.log(this.messagesTarget);
    this.channel = createConsumer().subscriptions.create(
      { channel: 'ConversationChannel', id: this.conversationIdValue },
      { received: message => this.#insertMessageAndScrollDown(message) }
    )
  }

  #insertMessageAndScrollDown(message) {
    console.log("what")
    // this.messagesTarget.insertAdjacentHTML('beforeend', message)
    // window.scrollTo(0, document.body.scrollHeight, {top: 0, behavior: 'smooth'})
    const currentUserIsSender = this.currentUserIdValue === message.sender_id
      // Creating the whole message from the `data.message` String
    const messageElement = this.#buildMessageElement(currentUserIsSender, message.message)

    // Inserting the `message` in the DOM
    // console.log(messageElement)
    this.messagesTarget.insertAdjacentHTML("beforeend", messageElement)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
    }

  #buildMessageElement(currentUserIsSender, message) {
    // console.log(message)
    return `
      <div class="message-row d-flex ${this.#justifyClass(currentUserIsSender)}">
        <div class="${this.#userStyleClass(currentUserIsSender)}">
          ${message}
        </div>
      </div>
    `
  }

  #justifyClass(currentUserIsSender) {
    return currentUserIsSender ? "justify-content-end" : "justify-content-start"
  }

  #userStyleClass(currentUserIsSender) {
    return currentUserIsSender ? "sender-style" : "receiver-style"
  }

  resetForm(event) {
    event.target.reset()
  }

  disconnect() {
    this.channel.unsubscribe()
  }
}
