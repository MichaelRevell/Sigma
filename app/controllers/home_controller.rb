class HomeController < ApplicationController
  def index
  end
  
  def display
    @beliefs = Belief.all
    @users = User.all
  end

  def add_beliefs
  end
end
