  class MusclesController < ApplicationController
      before_action :set_muscle, only: [:show]
    def index
      @muscles = Muscle.all
        # render json: @muscles
    end

    def show
      @muscle = Muscle.find(params[:id])
      respond_to do |format|
          format.html {render :show}
          format.json {render json: @category, include: :exercises}
  end
end
private
  # Use callbacks to share common setup or constraints between actions.
  def set_muscle
    @muscle = Muscle.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def muscle_params
    params.require(:muscle).permit(:title, :photo_url)
  end
end
