class CardsController < ApplicationController
	def index
    @cards = Card.all
  end

  def show
  	@card = Card.find(params[:id])
  end

  def new
  	@card = Card.new
  end
end
