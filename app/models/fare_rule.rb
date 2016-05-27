class FareRule < ApplicationRecord
  validates :route_id, :presence => true
  validates :fare_id, :presence => true
end
