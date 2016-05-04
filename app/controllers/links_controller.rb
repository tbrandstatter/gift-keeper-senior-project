class LinksController < ApplicationController
    def new
    @link = Link.new
  end

  def index
    @links = Link.all
  end

  def create
    if logged_in?
      @link = current_user.links.build(links_params)
        if @link.save
          flash[:success] = "Shopping Link added!"
          redirect_to link_path
         else
          render 'static_pages/home'
         end
    end
  end


  def destroy()
    Link.find(params[:id]).destroy
    flash[:success] = "Link deleted"
    redirect_to root_url
  end

  private

  def links_params
    params.require(:link).permit(:content)
  end
end

