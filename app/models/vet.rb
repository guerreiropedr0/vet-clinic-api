class Vet < ApplicationRecord
  validates :name, presence: true, length: { in: 2..200 }
  validates :age, presence: true, numericality: {
    greater_than_or_equal_to: 18,
    less_than_or_equal_to: 80
  }
  validates :graduation_date, presence: true
end