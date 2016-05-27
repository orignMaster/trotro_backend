class CreateStops < ActiveRecord::Migration[5.0]
  def change
    create_table :stops do |t|
      t.string :stop_id
      t.string :stop_name
    end
    add_column :stops, :stop_lat, :decimal, {:precision=>10, :scale=>6}
    add_column :stops, :stop_long, :decimal, {:precision=>10, :scale=>6}
  end
end
