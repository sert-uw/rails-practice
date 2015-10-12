class Tag < ActiveRecord::Base
  has_many :segment_tags
  has_many :segments, through: :segment_tags
end
