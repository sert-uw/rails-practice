class ReferrersController < ApplicationController
  protect_from_forgery except: [:create]

  def new
    @referrer = Referrer.new
  end

  def create
    @referrer = Referrer.create(referrer_params)
    redirect_to new_referrer_path
  end

  private
    def referrer_params
      params.require(:referrer).permit(:visitor_id, :access_from)
    end
end
