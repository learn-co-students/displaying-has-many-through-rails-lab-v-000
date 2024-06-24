class PatientsController < ActionController::Base
  def show
    @patient = Patient.find(params[:id])
  end
end
