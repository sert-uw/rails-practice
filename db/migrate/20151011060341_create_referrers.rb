class CreateReferrers < ActiveRecord::Migration
  def change
    create_table :referrers do |t|
      t.integer :user_id
      t.string :access_from

      t.timestamps null: false
    end
  end
end
