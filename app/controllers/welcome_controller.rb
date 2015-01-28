class WelcomeController < ApplicationController
  def index
    @articles = Article.all
  end
  def show
    
  end
end
