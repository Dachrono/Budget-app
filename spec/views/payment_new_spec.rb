require 'rails_helper'

RSpec.describe 'New Transaction Form', type: :system do
  it 'submits a new transaction form' do
    category = create(:category)

    visit add_new_payment_path(category.id)

    expect(page).to have_content('New transaction')

    expect(page).to have_field('Name', type: 'text')
    expect(page).to have_field('Amount', type: 'number')
    expect(page).to have_button('Create')

    fill_in 'Name', with: 'Transaction Name'
    fill_in 'Amount', with: 50.00  
  end
end

