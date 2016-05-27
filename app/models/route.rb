class Route < ApplicationRecord
  validates :route_id, :presence => true
  validates :route_short_name, :presence => true
  validates :agency_id, :presence => true
  validates :route_long_name, :presence => true
  validates :route_type, :presence => true
end
