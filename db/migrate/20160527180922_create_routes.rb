class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.string :route_id
      t.string :route_short_name
      t.integer :agency_id
      t.string :route_long_name
      t.integer :route_type
    end
  end
end
