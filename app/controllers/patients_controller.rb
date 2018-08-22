class PatientsController < ApplicationController

  def index
  end

  def show
    @patient = Patient.find(params[:id])
  end
end
