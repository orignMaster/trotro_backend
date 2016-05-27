class CreateShapes < ActiveRecord::Migration[5.0]
  def change
    create_table :shapes do |t|
      t.integer :shape_id 
    end
    add_column :shapes, :shape_pt_lat, :decimal, {:precision=>10, :scale=>6}
    add_column :shapes, :shape_pt_long, :decimal, {:precision=>10, :scale=>6}
    add_column :shapes, :shape_pt_sequence, :integer
  end
end
