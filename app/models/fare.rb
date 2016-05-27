class Fare < ApplicationRecord
  validates :fare_id, :presence => true
  validates :price, :presence => true
  validates :currency_type, :presence => true
end
