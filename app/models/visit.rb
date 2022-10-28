class Visit < ApplicationRecord
  belongs_to :animal
  belongs_to :vet

  validates :visit_date, presence: true
end
