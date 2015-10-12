class @ChatClass
  constructor: (url, useWebsocket) ->
    @dispatcher = new WebSocketRails(url, useWebsocket)
    @channel = @dispatcher.subscribe('visitor')
    console.log(url)
    @events()

  events: () =>
    @channel.bind 'visitor', @receiveMessage

  receiveMessage: (message) =>
    sex = message.sex
    age = message.age
    af = message.access_from
    aa = message.accessed_at
    row = "<tr><td>#{sex}</td><td>#{age}</td><td>#{af}</td><td>#{aa}</td></tr>"
    $('#visitor').append row

$ ->
  window.chatClass = new ChatClass("localhost:3000/websocket", true)
