class Agency < ApplicationRecord
  validates :name, :presence => true
  validates :timezone, :presence => true
end
