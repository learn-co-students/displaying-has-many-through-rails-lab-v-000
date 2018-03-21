class PatientsController < ApplicationController
  def index
     @patients = Patient.all
   end

  def show
   @patients = Patient.find(params[:id])
 end
end
