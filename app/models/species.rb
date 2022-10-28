class Species < ApplicationRecord
  has_many :animals
  has_many :specializations
  has_many :vets, through: :specializations

  validates :name, presence: true, uniqueness: true, length: { in: 2..100 }
end
