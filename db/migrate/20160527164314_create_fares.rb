class CreateFares < ActiveRecord::Migration[5.0]
  def change
    create_table :fares do |t|
      t.string :fare_id
      t.decimal :price
      t.string :currency_type
      t.string :payment_method
      t.string :transfers
      t.string :transfer_duration

      t.timestamps
    end
  end
end
