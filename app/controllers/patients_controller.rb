class PatientsController < ApplicationController
  def index
    @all = Patient.all
  end

  def create
  end

  def new
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def edit
  end
end
