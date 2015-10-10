WebsocketRails::EventMap.describe do
  subscribe :client_connected, to: SocketController, with_method: :connect_user
  subscribe :new_message, to: SocketController, with_method: :new_message
end
