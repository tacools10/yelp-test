class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates_inclusion_of :rating, in: [ 0, 1, 2, 3, 4, 5], allow_nil: false
end
