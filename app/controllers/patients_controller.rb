class PatientsController < ApplicationController

  def index
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
