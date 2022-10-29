FactoryBot.define do
  factory :user do
    name { 'John Doe' }
    email { 'johndoe@domain.com' }
    password { 'password' }
  end
end
