class Animal < ApplicationRecord
  belongs_to :owner

  validates :name, presence: true, length: { in: 2..100 }
  validates :birth_date, presence: true
  validates :neutered, presence: true, inclusion: [true, false]
  validates :weight_kg, presence: true, numericality: {
    greater_than_or_equal_to: 0.05,
    less_than_or_equal_to: 200
  }
end
