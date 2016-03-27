class IdeasController < ApplicationController
  def new
    @idea = Idea.new
  end

  def show
    @idea = Idea.find(params[:id])
  end

  private

  def user_params
    params.require(:idea).permit(:content)
  end

end
