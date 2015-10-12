class Referrer < ActiveRecord::Base
  after_save :send_referrer, only: [:create]
  belongs_to :visitor

  def send_referrer
    visitor = Visitor.find visitor_id

    params = {}
    params[:sex] = get_sex_string(visitor.sex)
    params[:age] = visitor.age
    params[:access_from] = access_from
    params[:accessed_at] = created_at.strftime("%Y年%m月%d日 %H:%M:%S")

    WebsocketRails[:visitor].trigger :visitor, params
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
