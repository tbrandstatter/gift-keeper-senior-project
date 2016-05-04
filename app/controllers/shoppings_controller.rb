class ShoppingsController < ApplicationController
  def new
    @shopping = Shopping.new
  end

  def index
    @shoppings = Shopping.all
  end

  def create
    @giftboard = Giftboard.find(session[:giftboard_id])
    @shopping = @giftboard.shoppings.create(shoppings_params)
    @shopping.user_id = current_user.id
      if @shopping.save
        flash[:success] = "Link added!"
        redirect_to shopping_path
       else
       redirect_to root_path
      end
  end

  def destroy()
    Shopping.find(params[:id]).destroy
    flash[:success] = "Link deleted"
    redirect_to shopping_path
  end

  private

  def shoppings_params
    params.require(:shopping).permit(:content)
  end
end

