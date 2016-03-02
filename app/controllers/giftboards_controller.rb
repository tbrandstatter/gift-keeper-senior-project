class GiftboardsController < ApplicationController
  def new
    @giftboard = Giftboard.new
  end

  def create
    if logged_in?
      @giftboard = current_user.giftboards.build(giftboards_params)
        if @giftboard.save
          flash[:success] = "Giftboard created!"
          redirect_to root_url
         else
          render 'static_pages/home'
         end
    end
  end

  def destroy()
    Giftboard.find(params[:id]).destroy
    flash[:success] = "Giftboard deleted"
    redirect_to root_url
  end

  private

  def giftboards_params
    params.require(:giftboard).permit(:name)
  end
end
