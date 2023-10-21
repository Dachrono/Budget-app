FactoryBot.define do
    factory :payment do
      name { 'Cheves' }
      amount { 200.50 }
      association :author, factory: :user
    end
  end