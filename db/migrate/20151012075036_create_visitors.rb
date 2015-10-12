class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.integer :sex
      t.integer :age

      t.timestamps null: false
    end
  end
end
