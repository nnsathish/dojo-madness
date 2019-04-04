class HerosController < ApplicationController
  def index
    heros = HeroWrapper.all
    render heros
  end

  def show
    hero = HeroWrapper.find(params[:id])
    render hero
  end
end
