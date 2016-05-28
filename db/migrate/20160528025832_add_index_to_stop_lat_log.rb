class AddIndexToStopLatLog < ActiveRecord::Migration[5.0]
  def change
    add_index :stops, :stop_lat
    add_index :stops, :stop_long
  end
end
