class AppointmentsController < ApplicationController

def index
end

def show
  @appointment = Appointment.find(params[:id])
end

end
