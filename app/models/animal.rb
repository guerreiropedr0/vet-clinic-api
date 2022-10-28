class Animal < ApplicationRecord
  belongs_to :owner
  belongs_to :species
  has_many :visits
  has_many :vets, through: :visits

  validates :name, presence: true, length: { in: 2..100 }
  validates :birth_date, presence: true
  validates :neutered, inclusion: [true, false]
  validates :weight_kg, presence: true
end
