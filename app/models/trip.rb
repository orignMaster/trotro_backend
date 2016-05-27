class Trip < ApplicationRecord
  validates :route_id, :presence => true
  validates :service_id, :presence => true
  validates :trip_id, :presence => true
  validates :shape_id, :presence => true
end
