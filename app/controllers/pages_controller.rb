class PagesController < ApplicationController
  def home
    @users = User.all
  end

  def contact
  end

  def about
  end
end
