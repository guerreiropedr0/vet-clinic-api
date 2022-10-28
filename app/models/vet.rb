class Vet < ApplicationRecord
  has_many :specializations
  has_many :species, through: :specializations
  has_many :visits
  has_many :animals, through: :visits

  validates :name, presence: true, length: { in: 2..200 }
  validates :age, presence: true, numericality: {
    greater_than_or_equal_to: 18,
    less_than_or_equal_to: 80
  }
  validates :graduation_date, presence: true
end
