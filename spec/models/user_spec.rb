require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = build(:user)
    expect(user).to be_valid
  end

  it 'is not valid without a name' do
    user = build(:user, name: nil)
    expect(user).not_to be_valid
  end

  it 'has many categories' do
    user = User.reflect_on_association(:categories)
    expect(user.macro).to eq(:has_many)
  end

  it 'has many payments' do
    user = User.reflect_on_association(:payments)
    expect(user.macro).to eq(:has_many)
  end

  it 'is confirmable' do
    user = create(:user)
    expect(user.confirmed?).to be true
  end
end
