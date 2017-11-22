class PatientsController < ApplicationController

  def index
    @patients = Patient.all
    #binding.pry
  end

  def show
    @patient = Patient.find(params[:id])
  end



end
