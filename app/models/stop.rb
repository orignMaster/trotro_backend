class Stop < ApplicationRecord
  validates :stop_id, :presence => true
  validates :stop_name, :presence => true
  validates :stop_lat, :presence => true
  validates :stop_long, :presence => true
end
