class PatientsController < ApplicationController
  include PatientsHelper

  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
    add_full_dates(@patient)
  end
end
