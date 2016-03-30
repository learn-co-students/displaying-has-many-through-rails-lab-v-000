class PatientsController < ApplicationController
  before_action :set_show, only: :show
  
  def index
    @patients = Patient.all
  end

  private

  def set_show
    @patient = Patient.find(params[:id])
  end
end
