class WelcomeController < ApplicationController

  def index
    @name = "João Lucas"
  end

  def black
    @text = "Esta é uma página com novo layout!"
    render layout: 'layout_black'
  end

end