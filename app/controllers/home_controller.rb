class HomeController < ApplicationController
  def index
    @categories = Category.where(user_id: current_user.id)
    @current_user = current_user
  end

  def show
    @category = Category(params[:id])
  end

  def new
    @category = Category.new
    @user_owner = current_user
  end
  
  def create
    @category_data = Category.new(categorynew_params)
    @category_data.user_id = current_user.id

    if @category_data.save
      flash[:notice] = 'The category was created successfully!'
    else
      flash[:alert] = 'The category was not created!'
    end
    redirect_to home_index_path
  end

  private 

  def categorynew_params
    params.require(:category).permit(:name, :icon)
  end
end
