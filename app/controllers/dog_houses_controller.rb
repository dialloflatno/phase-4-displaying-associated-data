class DogHousesController < ApplicationController

  def show
    render json: dog_house, include: :reviews
  end

end
