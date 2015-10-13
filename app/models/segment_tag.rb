class SegmentTag < ActiveRecord::Base
  belongs_to :segment
  belongs_to :tag
end
