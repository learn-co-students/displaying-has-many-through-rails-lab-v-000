require 'pry'
class AppointmentsController < ApplicationController
  def index

  end

  def show
    binding.pry
    @appointment = Appointment.find(params[:id])
  end
end
