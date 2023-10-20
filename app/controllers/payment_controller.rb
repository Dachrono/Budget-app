class PaymentController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @payments = CategoryPayment.where(category_id: params[:id]).includes(:payment).order(created_at: :desc)

    total_amount = 0

    @payments.each do |item|
      total_amount += item.payment.amount
    end

    @category.update(Totalamount: total_amount)
  end

  def new
    @category = params[:id]
    @payment = Payment.new
  end

  def create
    @payment = Payment.new(payment_params)
    @payment.author_id = current_user.id
    @payment.save

    @category_payment = CategoryPayment.new
    @category_payment.category_id = params[:id]
    @category_payment.payment_id = @payment.id
    @category_payment.save
    redirect_to payment_path(params[:id])
  end

  private

  def payment_params
    params.require(:payment).permit(:name, :amount)
  end
end
