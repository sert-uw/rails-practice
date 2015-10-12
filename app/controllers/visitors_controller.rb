class VisitorsController < ApplicationController
  protect_from_forgery except: [:create]

  def create
    p params
    WebsocketRails[:visitor].trigger :visitor, params
    render json: {'message': 'OK'}
  end
end
