class PatientsController < ApplicationController

  def index
    @patients = patients
  end

  def show
      @patient = Patient.find_by_id(params[:id])
  end


  private

  def patients
    Patient.all
  end

end
