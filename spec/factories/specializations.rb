FactoryBot.define do
  factory :specialization do
    species_id { create(:species).id }
    vet_id { create(:vet).id }
  end
end
