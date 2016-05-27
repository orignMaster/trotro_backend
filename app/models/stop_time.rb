class StopTime < ApplicationRecord
  validates :trip_id, :presence => true
  validates :arrival_time, :presence => true
  validates :departure_time, :presence => true
  validates :stop_sequence, :presence => true
  validates :stop_id, :presence => true
end
