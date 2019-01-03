class DoctorsController < ApplicationController

 def show
    @doctor = Doctor.find(params[:id])
    @appointments = Appointment.all
 end

end
