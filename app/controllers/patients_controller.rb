class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  private
    def patients_params
      params.require(:patients).permit(:name, :age)
    end
end
