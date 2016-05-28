class Stop < ApplicationRecord
  validates :stop_id, :presence => true
  validates :stop_name, :presence => true
  validates :stop_lat, :presence => true
  validates :stop_long, :presence => true

  acts_as_mappable :default_units => :kms,
    :default_formula => :flat,
    :distance_field_name => :distance,
    :lat_column_name => :stop_lat,
    :lng_column_name => :stop_long

  def self.search(search)
    where("stop_name ILIKE ?", "%#{search}%")
  end

end
