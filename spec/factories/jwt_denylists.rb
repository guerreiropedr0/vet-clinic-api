FactoryBot.define do
  factory :jwt_denylist do
    jti { "MyString" }
    exp { "2022-10-29 01:13:52" }
  end
end
