require 'rails_helper'

RSpec.feature 'Homepage', type: :feature do
  scenario 'User can see login, and signup links' do
    visit root_path

    expect(page).to have_link('LOG IN', href: new_user_session_path)

    expect(page).to have_link('SIGN UP', href: new_user_registration_path)
  end
end
