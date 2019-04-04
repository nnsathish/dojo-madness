class AbilitiesController < ApplicationController
  def index
    abilities = Ability.all.page(params[:page])
    render json: abilities
  end

  def show
    ability = Ability.find(params[:id])
    render json: ability
  end
end
