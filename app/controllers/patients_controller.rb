class PatientsController < ApplicationController
  before_action :set_patient!, only: [:show]

  def index
    @patients= Patient.all
  end

  def show
  end

  private
  def set_patient!
    @patient = Patient.find_or_create_by(id: params[:id])
  end
end
