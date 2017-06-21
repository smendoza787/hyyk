class CreateTrails < ActiveRecord::Migration[5.0]
  def change
    create_table :trails do |t|
      t.string :location
      t.integer :distance
      t.integer :elevation
      t.string :type
      t.boolean :hiked

      t.timestamps
    end
  end
end
