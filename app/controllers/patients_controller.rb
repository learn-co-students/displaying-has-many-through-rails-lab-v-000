class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end
  def show
      @patient = Patient.find(params[:id])
    #binding.pry
  end

end
