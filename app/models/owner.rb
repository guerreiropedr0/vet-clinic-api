class Owner < ApplicationRecord
  validates :name, presence: true, length: { in: 2..200 }
  validates :age, numericality: {
    greater_than_or_equal_to: 16,
    less_than_or_equal_to: 140,
    allow_nil: true
  }
  validates :email, uniqueness: true
end
