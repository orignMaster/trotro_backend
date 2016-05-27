class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :route_id
      t.string :service_id
      t.string :trip_id
      t.string :shape_id
    end
  end
end
