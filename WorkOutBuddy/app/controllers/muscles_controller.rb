class MusclesController < ApplicationController

  def index
    @muscles = Muscles.all
      render json: @muscles
  end

  def show
    @muscle = Muscle.find(params[:id])
    render json: @muscle
end
end
