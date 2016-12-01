  class MusclesController < ApplicationController
    def index
    @muscles = Muscle.all
  end

  def show
    @muscle = Muscle.find(params[ :id])
    @exercise = Exercise.new
  end

  def new
    @muscle = Muscle.new
  end

  def edit
    @muscle = Muscle.find(params[:id])
  end

  def create
    @muscle = Muscle.new(muscle_params)
    if @muscle.save
      redirect_to @muscle.exercise
    else
      render 'new'
    end
  end

  def update
    @muscle = Muscle.find(params[:id])

    if @muscle.update(muscle_params)
      redirect_to @muscle
    else
      render 'edit'
    end
  end
  def destroy
    @muscle = Muscle.find(params[:id])
    @muscle.destroy

      redirect_to muscles_path
    end
  private
  def muscle_params
    params.require( :muscle).permit( :muscle)
  end
end
