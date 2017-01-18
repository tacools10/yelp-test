class Review < ApplicationRecord
  belongs_to :restaurant
  dependendent: :destroy
  validates :content, :rating, presence: true
  validates_inclusion_of :rating, :in => {1,2,3,4,5}
end
