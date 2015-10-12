class SocketController < WebsocketRails::BaseController
  def initialize_session
  end

  def connect_user
  end

  def new_message
    WebsocketRails[:visitor].trigger :visitor, message
  end
end
