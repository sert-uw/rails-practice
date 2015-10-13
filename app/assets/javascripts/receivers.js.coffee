class @VisitorClass
  constructor: (url, useWebsocket) ->
    @dispatcher = new WebSocketRails(url, useWebsocket)
    @channel = @dispatcher.subscribe('visitor')
    console.log(url)
    @events()

  events: () =>
    $('#segmentButton').on 'click', @submitMessage
    @channel.bind 'visitor', @receiveMessage

  submitMessage: (event) =>
    request = $('#segmentButton').val()
    @dispatcher.trigger 'update_list', { segment: request }

  receiveMessage: (message) =>
    sex = message.sex
    age = message.age
    af = message.access_from
    aa = message.accessed_at
    row = "<tr><td>#{sex}</td><td>#{age}</td><td>#{af}</td><td>#{aa}</td></tr>"
    $('#visitor').append row

$ ->
  window.visitorClass = new VisitorClass("localhost:3000/websocket", true)
