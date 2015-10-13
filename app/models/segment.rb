class Segment < ActiveRecord::Base
  has_many :segment_tags
  has_many :tags, through: :segment_tags
end
