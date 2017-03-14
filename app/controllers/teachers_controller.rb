class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :update, :destroy]

  # GET /teachers
  def index
    @teachers = Teacher.all

    render json: @teachers,status: 200
  end



  # DELETE /teachers/1
  def destroy
    @teacher.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    # def teacher_params
    #   params.require(:teacher).permit(:name)
    # end
end
