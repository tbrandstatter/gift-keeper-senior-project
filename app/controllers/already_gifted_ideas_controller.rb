class AlreadyGiftedIdeasController < ApplicationController
  def new
    @alreadygiftedidea = AlreadyGiftedIdea.new
  end

  def index
    @alreadygiftedideas = AlreadyGiftedIdea.all
  end

  def create
    @giftboard = Giftboard.find(session[:giftboard_id])
    idea = Idea.find(params[:id])
    @alreadygiftedidea = @giftboard.already_gifted_ideas.new(content:idea.content, image:idea.image)
    @alreadygiftedidea.user_id = current_user.id
      if @alreadygiftedidea.save
        flash[:success] = "Idea moved"
        redirect_to idea_path
       else
       flash[:succes] = alreadygiftedidea_params[:idea]
       redirect_to root_path
      end
  end

  def destroy()
    AlreadyGiftedIdea.find(params[:id]).destroy
    flash[:success] = "Gift idea deleted"
    redirect_to alreadygiftedidea_path
  end

  private

  def alreadygiftedidea_params
    params.require(:alreadygiftedidea).permit(:content, :image, :remote_image_url)
  end
end
