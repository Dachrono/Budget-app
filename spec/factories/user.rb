FactoryBot.define do
  factory :user do
    id { rand(1..100) }
    name { 'Andy Zam' }
    sequence(:email) { |n| "user#{n}@example.com" }
    password { '123456' }
    confirmed_at { Time.now }
  end
end
