# spec/system/categories_spec.rb
require 'rails_helper'

RSpec.describe 'Categories', type: :system do
  it 'displays the new category form' do
    visit new_home_path

    expect(page).to have_content('New category')
    expect(page).to have_selector('form')
    expect(page).to have_field('Name', type: 'text')
    expect(page).to have_field('Icon', type: 'url')
    expect(page).to have_button('Create')
  end
end
