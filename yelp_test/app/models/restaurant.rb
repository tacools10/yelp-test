class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates_inclusion_of :category, in: ["chinese", "belgian", "italian", "japanese", "french"], allow_nil: false
end
