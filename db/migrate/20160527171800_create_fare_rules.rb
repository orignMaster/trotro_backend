class CreateFareRules < ActiveRecord::Migration[5.0]
  def change
    create_table :fare_rules do |t|
      t.string :route_id
      t.string :fare_id
      t.string :contains_id
      t.string :destination_id
      t.string :origin_id

      t.timestamps
    end
  end
end
