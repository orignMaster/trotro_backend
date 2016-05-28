class Stop < ApplicationRecord
  validates :stop_id, :presence => true
  validates :stop_name, :presence => true
  validates :stop_lat, :presence => true
  validates :stop_long, :presence => true

  acts_as_mappable :default_units => :miles,
    :default_formula => :sphere,
    :distance_field_name => :distance,
    :lat_column_name => :stop_lat,
    :lng_column_name => :stop_lng

  def self.search(search)
    where("stop_name ILIKE ?", "%#{search}%")
  end

end
