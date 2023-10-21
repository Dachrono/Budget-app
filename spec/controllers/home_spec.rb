# spec/controllers/home_controller_spec.rb
require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  let(:user) { create(:user) }

  before do
    sign_in user
  end

  describe 'GET #index' do
    it 'assigns @categories and @current_user' do
      get :index
      expect(assigns(:categories)).not_to be_nil
      expect(assigns(:current_user)).to eq(user)
    end
  end

  describe 'GET #new' do
    it 'assigns @category and @user_owner' do
      get :new
      expect(assigns(:category)).to be_a_new(Category)
      expect(assigns(:user_owner)).to eq(user)
    end
  end

  describe 'POST #create' do
    it 'creates a new category' do
      category_params = { name: 'Test Category', icon: 'icon.png' }
      post :create, params: { category: category_params }
      expect(response).to redirect_to(home_index_path)
    end

    it 'handles category creation failure' do
      category_params = { name: nil, icon: 'icon.png' }
      post :create, params: { category: category_params }
      expect(response).to redirect_to(home_index_path)
    end
  end
end
