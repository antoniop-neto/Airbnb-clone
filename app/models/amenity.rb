class Amenity < ApplicationRecord
  has_many :listings, through: :listings_amenities
  has many :listings_amenities
end
