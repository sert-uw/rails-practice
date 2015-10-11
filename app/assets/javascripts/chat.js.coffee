class @ChatClass
  constructor: (url, useWebsocket) ->
    @dispatcher = new WebSocketRails(url, useWebsocket)
    console.log(url)
    @events()

  events: () =>
    $('#button').on 'click', @submitMessage
    @dispatcher.bind 'new_message', @receiveMessage

  submitMessage: (event) =>
    msg_body = $('#text').val()
    @dispatcher.trigger 'new_message', { body: msg_body }
    $('#text').val('')

  receiveMessage: (message) =>
    $('#message').append "<p class='left'>#{ message.body }</p>"

$ ->
  window.chatClass = new ChatClass("localhost:3000/websocket", true)
