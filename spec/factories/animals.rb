FactoryBot.define do
  factory :animal do
    name { 'John Doe' }
    birth_date { '2010-10-20' }
    neutered { false }
    weight_kg { 9.99 }
    owner_id { create(:owner).id }
    species_id { create(:species).id }
  end
end
