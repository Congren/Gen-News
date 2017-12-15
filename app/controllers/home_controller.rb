class HomeController < ApplicationController

  def home
  	@articles = Article.all
  end

  def about
  end

  def privacy
  end

  def contact
  end

end