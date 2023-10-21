require 'rails_helper'

RSpec.describe PaymentController, type: :controller do
  let(:user) { create(:user) }

  before do
    sign_in user
  end

  describe 'GET #show' do
    it 'assigns @category and @payments' do
      category = create(:category)
      payment = create(:payment)
      category_payment = create(:category_payment, category:, payment:)

      get :show, params: { id: category.id }

      expect(assigns(:category)).to eq(category)
      expect(assigns(:payments)).to eq([category_payment])
    end

    it 'updates the category Totalamount' do
      category = create(:category)
      payment = create(:payment, amount: 100.0)
      create(:category_payment, category:, payment:)

      get :show, params: { id: category.id }

      category.reload
      expect(category.Totalamount).to eq(100.0)
    end
  end
end
