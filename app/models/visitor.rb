class Visitor < ActiveRecord::Base
  has_many :referrers, dependent: :destroy
end
