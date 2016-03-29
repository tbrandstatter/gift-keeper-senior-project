class IdeasController < ApplicationController
  def new
    @idea = Idea.new
  end

  def list
    @ideas = Idea.all
  end

  def create
    @idea = Idea.create(ideas_params)
      if @idea.save
        flash[:success] = "Idea added!"
        redirect_to idea_path
       else
       redirect_to root_path
      end
  end

  private

  def ideas_params
    params.require(:idea).permit(:content)
  end

end
