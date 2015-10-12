class @ChatClass
  constructor: (url, useWebsocket) ->
    @dispatcher = new WebSocketRails(url, useWebsocket)
    @channel = @dispatcher.subscribe('visitor')
    console.log(url)
    @events()

  events: () =>
    $('#button').on 'click', @submitMessage
    @channel.bind 'visitor', @receiveMessage

  submitMessage: (event) =>
    msg_body = $('#text').val()
    @dispatcher.trigger 'new_message', { body: msg_body }
    $('#text').val('')

  receiveMessage: (message) =>
    $('#visitor').append "<p class='left'>#{ message.body }</p>"

$ ->
  window.chatClass = new ChatClass("localhost:3000/websocket", true)
