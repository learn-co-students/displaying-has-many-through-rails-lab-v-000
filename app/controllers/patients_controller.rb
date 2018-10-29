class PatientsController < ApplicationController
  def show
    @patient = Patient.find(params[:id])
  end

  def index
    @patients = Patient.all
  end

  # def new
  # end

  # def create
  # end

  # def edit
  # end

  # def update
  # end

  # def delete
  # end

  # def destroy
  # end
end
