# spec/system/transactions_spec.rb
require 'rails_helper'

RSpec.describe 'Transactions', type: :system do
  before do
    @category = create(:category, name: 'Category Name', Totalamount: 100.00)
    @payments = [
      create(:category_payment, category: @category,
                                payment: create(:payment, name: 'Payment 1', amount: 50.00, created_at: Time.now)),
      create(:category_payment, category: @category,
                                payment: create(:payment, name: 'Payment 2', amount: 60.00, created_at: Time.now))
    ]
  end

  it 'displays the transactions and navigation links' do
    visit payment_path(@category)

    expect(page).to have_content('Transactions')
    expect(page).to have_content('Most recent')
    expect(page).to have_content('Total amount')
    expect(page).to have_selector('.category .transaction', count: 2)

    expect(page).to have_text('Payment 1')
    expect(page).to have_text('Payment 2')

    expect(page).to have_link('New transaction', href: add_new_payment_path(@category.id))
  end
end
