class DetailVisitorsController < ApplicationController
  before_action :set_visitor

  def index
  end

  private
    def set_visitor
      @visitor = Visitor.find(params[:visitor_id])
    end
end
