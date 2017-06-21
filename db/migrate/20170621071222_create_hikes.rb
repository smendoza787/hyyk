class CreateHikes < ActiveRecord::Migration[5.0]
  def change
    create_table :hikes do |t|
      t.integer :user_id
      t.integer :trail_id
      t.datetime :date

      t.timestamps
    end
  end
end
