FactoryBot.define do
  factory :jwt_denylist do
    jti { 'long_token' }
    exp { '2022-10-29 01:13:52' }
  end
end
