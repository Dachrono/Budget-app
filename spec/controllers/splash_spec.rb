require 'rails_helper'

RSpec.describe SplashController, type: :controller do
  describe 'GET #index' do
    context 'when the user is not signed in' do
      it 'renders the index template' do
        get :index
        expect(response).to render_template(:index)
      end

      it 'does not redirect to the home page' do
        get :index
        expect(response).not_to redirect_to(home_index_path)
      end
    end

    context 'when the user is signed in' do
      before do
        sign_in create(:user)
      end

      it 'redirects to the home page' do
        get :index
        expect(response).to redirect_to(home_index_path)
      end
    end
  end
end
