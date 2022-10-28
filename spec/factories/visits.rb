FactoryBot.define do
  factory :visit do
    animal
    vet
    visit_date { '2022-10-20' }
  end
end
