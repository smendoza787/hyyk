class AddCreatedByUserIdToTrails < ActiveRecord::Migration[5.0]
  def change
    add_column :trails, :created_by_user_id, :integer
  end
end
