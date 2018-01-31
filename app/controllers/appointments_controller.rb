class AppointmentsController < ApplicationController

def index

end
def new
 @appointment = Appointment.new
end

def create
  @appointment = Appointment.create(params.require(:appointment).permit(:appointment_datetime))
end
def show
@appointment = Appointment.find(params[:id])
end
end
