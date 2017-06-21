class CreateTrails < ActiveRecord::Migration[5.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :location
      t.integer :distance
      t.integer :elevation
      t.string :trail_type

      t.timestamps
    end
  end
end
