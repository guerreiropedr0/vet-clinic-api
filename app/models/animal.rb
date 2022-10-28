class Animal < ApplicationRecord
  belongs_to :owner
  belongs_to :species

  validates :name, presence: true, length: { in: 2..100 }
  validates :birth_date, presence: true
  validates :neutered, presence: true, inclusion: [true, false]
  validates :weight_kg, presence: true
end
