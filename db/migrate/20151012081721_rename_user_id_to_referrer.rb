class RenameUserIdToReferrer < ActiveRecord::Migration
  def up
    rename_column :referrers, :user_id, :visitor_id
  end
end
