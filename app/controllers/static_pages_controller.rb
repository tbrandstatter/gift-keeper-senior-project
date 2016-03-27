class StaticPagesController < ApplicationController
  def home
   if logged_in?
     @giftboards = current_user.giftboards
     render :action => 'logged_in_home'
    else
     render :action => 'non_logged_in_home'
    end
  end

  def help
  end

  def about
  end

  def contact
  end


end
