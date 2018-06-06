class AppointmentsController < ApplicationController
  def create
    @appointment.create(appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def new
    @appointment = appointment.new
  end

  def edit

  end

  def show
    @appointment = appointment.find(params[:id])
    binding.pry
  end

  def update

  end

  private

  def appointment_params
    params.require(:appointments).permit(:name, :age)
  end

end
end
