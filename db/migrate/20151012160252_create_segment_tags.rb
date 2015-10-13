class CreateSegmentTags < ActiveRecord::Migration
  def change
    create_table :segment_tags do |t|
      t.integer :segment_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
