class HerosController < ApplicationController


    def index
        heros = Hero.all
        heros = heros.sort_by(&:id)
        render json: heros
    end


    def show
      hero = Hero.find(params[:id])
      render json: hero


    end
    
end
