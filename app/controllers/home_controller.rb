class HomeController < ApplicationController
  def index
  end
  
  def display
    @beliefs = Belief.all
    @users = User.all
    @related_beliefs = 
  end

  def add_beliefs
  end
end
