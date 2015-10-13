class CreateBinds < ActiveRecord::Migration
  def change
    create_table :binds do |t|
      t.integer :segment_id
      t.integer :con_action_id
      t.integer :feedback_id

      t.timestamps null: false
    end
  end
end
