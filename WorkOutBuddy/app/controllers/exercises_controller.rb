class ExercisesController < ApplicationController
  def index
 @exercises = Exercise.all
 +end
 def new
   @exercise = Exercise.new
 end
 def show
   @exercise = Exercise.find(params[:id])
 end
 def create
   puts "heree"
   @muscle = Muscle.find(params[:muscle_id])
   @exercise = @muscle.exercises.create(exercise_params)
   redirect_to muscle_path (@muscle)
    end
 def destroy
@muscle = Muscle.find(params[:muscle_id])
@exercise = @muscle.exercises.find(params[:id])
@exercise.destroy
redirect_to muscle_path(@muscle)
 end
 private
 def exercise_params
   params.require( :exercise).permit( :workout, :photoUrl, :description, :video)
 end

 end
