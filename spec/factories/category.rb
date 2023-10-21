FactoryBot.define do
    factory :category do
      user
      name { 'Despensa' }
      icon { 'https://i.pravatar.cc/50' }
    end
  end