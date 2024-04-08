class Listing < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :bookings
  has_many :amenities, through: :listings_amenities
end
