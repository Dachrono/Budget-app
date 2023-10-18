class SplashController < ApplicationController
  def index
    if user_signed_in?
      redirect_to home_index_path
    end  
  end

  def logout
    sign_out current_user
    redirect_to root_path, notice: "Has cerrado sesión exitosamente."
  end
end
