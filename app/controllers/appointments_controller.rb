class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find(params[:id])
  end

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new

  end

  def create

    @appointment = Appointment.create(appointment_params)
    redirect_to :action => "show", :id => @appointment.id
  end

   def appointment_params
    params.require(:appointment).permit(:title, :patient, :doctor 

      )
  end
end
