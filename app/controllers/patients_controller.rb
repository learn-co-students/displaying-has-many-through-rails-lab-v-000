class PatientsController < ApplicationController
  
  def index
    @patients = Patient.all
  end
  
  def create
  end
  
  def new
  end

  def edit
  end

  def show
    #binding.pry
    @patient = Patient.find_by(id: params[:id])
  end

  def update
  end

end
