class Shape < ApplicationRecord
  validates :shape_id, :presence => true
  validates :shape_pt_lat, :presence => true
  validates :shape_pt_long, :presence => true
  validates :shape_pt_sequence, :presence => true
end
