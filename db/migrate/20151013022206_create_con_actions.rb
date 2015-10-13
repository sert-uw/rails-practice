class CreateConActions < ActiveRecord::Migration
  def change
    create_table :con_actions do |t|
      t.string :name
      t.string :target_page
      t.string :text
      t.string :image_path
      t.string :link

      t.timestamps null: false
    end
  end
end
