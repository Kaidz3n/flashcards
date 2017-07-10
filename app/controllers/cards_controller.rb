class CardsController < ApplicationController
	def index
    @cards = Card.all
  end

  def show
    @article = Card.find(params[:id])
  end
end
