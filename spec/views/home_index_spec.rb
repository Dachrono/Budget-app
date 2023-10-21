require 'rails_helper'

RSpec.feature 'Categories Page', type: :feature do
  let(:user) { create(:user) }
  let(:categories) { create_list(:category, 5, user:) }

  before do
    sign_in user
    visit home_index_path
  end

  scenario 'User can see navigation links' do
    expect(page).to have_css('.bar h2', text: 'Categories')

    expect(page).to have_css('.bar a', count: 2)

    expect(page).to have_link('New Category', href: new_home_path)
  end

  scenario 'User can click on "New Category" link' do
    click_link 'New Category'

    expect(page).to have_current_path(new_home_path)
  end
end
