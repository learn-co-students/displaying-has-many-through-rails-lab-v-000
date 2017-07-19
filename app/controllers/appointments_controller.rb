class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end


end

# class AppointmentsController < ApplicationController
#
#   def index
#     not_found
#   end
#
#   def show
#     @appointment = Appointment.find(params[:id])
#   end
#
#   private
#
#   def not_found
#     raise ActionController::RoutingError.new('Not Found')
#   end
#
# end
