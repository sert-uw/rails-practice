class Bind < ActiveRecord::Base
  has_one :feedback, dependent: :destroy
end
