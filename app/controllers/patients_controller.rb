class PatientsController < ApplicationController

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.create!
  end

  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end
end
