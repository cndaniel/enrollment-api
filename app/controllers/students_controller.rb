class StudentsController < ApplicationController
  before_action :set_student, only: [:show]



  # GET /students/1
  def show
    render json: @student, status: 200
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # # Only allow a trusted parameter "white list" through.
    # def student_params
    #   params.require(:student).permit(:name)
    # end
end
