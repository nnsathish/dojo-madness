class HerosController < ApplicationController
  def index
    heros = Hero.all.page(params[:page])
    render json: heros
  end

  def show
    hero = Hero.find(params[:id])
    render json: hero
  end
end
