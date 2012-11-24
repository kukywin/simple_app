class StaticPagesController < ApplicationController
  def home
  end

  def help
  	@title = "Help"
  end

  def about
  end

  def contact
  end
end
