class PatientsController < ApplicationController
  def index
    @patients = Patient.all.sort_by{|pat| pat.name}
  end
  def show
    @patient = Patient.find(params[:id])
  end
end
