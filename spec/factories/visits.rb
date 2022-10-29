FactoryBot.define do
  factory :visit do
    animal_id { create(:animal).id }
    vet_id { create(:vet).id }
    visit_date { '2022-10-20' }
  end
end
