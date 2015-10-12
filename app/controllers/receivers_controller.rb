class ReceiversController < ApplicationController
  before_action :authenticate_user!

  def index
    referrers = Referrer.all.order("created_at DESC")
    @visitors = []

    referrers.each do |ref|
      visitor = Visitor.find(ref.visitor_id)

      vis = {}
      vis[:sex] = get_sex_string(visitor.sex)
      vis[:age] = visitor.age
      vis[:access_from] = ref.access_from
      vis[:accessed_at] = ref.created_at.strftime("%Y年%m月%d日 %H:%MH%S")

      @visitors << vis
    end
  end

  def get_sex_string sex
    if sex == 0
      "Not Select"
    elsif sex == 1
      "Man"
    else
      "Woman"
    end
  end
end
