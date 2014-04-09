class WelcomeController < ApplicationController

  before_filter :authenticate_user!, except: [:index, :about]


  def index
    @name = "João Lucas"
  end

  def about
    @address = "Rua Maranhão, 1283"
  end

  def black
    @text = "Esta é uma página com novo layout!"
    render layout: 'layout_black'
  end

end