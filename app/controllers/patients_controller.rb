class PatientsController < ApplicationController

  def index
    @patients = Patient.all.sort_by{|p| p.name}
  end

  def show
    @patient = Patient.find_by(id: params[:id])
  end
end
