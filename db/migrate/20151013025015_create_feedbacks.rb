class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :bind_id
      t.integer :responce_click
      t.integer :responce_close
      t.integer :time_click
      t.integer :time_close

      t.timestamps null: false
    end
  end
end
