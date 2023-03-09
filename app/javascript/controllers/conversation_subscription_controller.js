import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="chatroom-subscription"
export default class extends Controller {
  static targets = [ 'messages' ]
  static values = { chatroomId: Number }

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: 'ChatroomChannel', id: this.chatroomIdValue },
      { received: message => this.#insertMessageAndScrollDown(message) }
    )
  }

  #insertMessageAndScrollDown(message) {
    this.messagesTarget.insertAdjacentHTML('beforeend', message)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  reset(event) {
    event.target.reset()
  }

  disconnect() {
    console.log('Left the channel');
    this.channel.unsubscribe()
  }
}
