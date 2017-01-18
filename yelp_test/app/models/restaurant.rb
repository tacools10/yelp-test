class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, :address, presence: true
  validates_inclusion_of :category, in: => {"chinese", "belgian", "italian", "japanese", "french"}
end
