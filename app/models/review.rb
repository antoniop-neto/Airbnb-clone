class Review < ApplicationRecord
  belongs_to :listing

  validates :rating, presence: true
end
