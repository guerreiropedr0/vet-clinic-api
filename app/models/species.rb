class Species < ApplicationRecord
  has_many :animals

  validates :name, presence: true, uniqueness: true, length: { in: 2..100 }
end
