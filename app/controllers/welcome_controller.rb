class WelcomeController < ApplicationController

  def index
    #From database to Ruby
    @user = current_user
    #From Ruby to JS
    gon.currentUser = @user
  end

end