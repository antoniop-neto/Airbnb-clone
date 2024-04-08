class Listing < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :listings_amenities
  has_many :amenities, through: :listings_amenities

  accepts_nested_attributes_for :listings_amenities

  validates :name, :price, :location, :availability, presence: true
end
