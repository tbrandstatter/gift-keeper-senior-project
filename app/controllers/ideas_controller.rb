class IdeasController < ApplicationController
  def new
    @idea = Idea.new
  end

  def index
    @ideas = Idea.all
  end

  def create
    @giftboard = Giftboard.find(session[:giftboard_id])
    @idea = @giftboard.ideas.create(idea_params)
    @idea.user_id = current_user.id
      if @idea.save
        flash[:success] = "Idea added!"
        redirect_to idea_path
       else
       redirect_to root_path
      end
  end

  def destroy()
    Idea.find(params[:id]).destroy
    flash[:success] = "Gift idea deleted"
    redirect_to idea_path
  end

  private

  def idea_params
    params.require(:idea).permit(:content)
  end

end
