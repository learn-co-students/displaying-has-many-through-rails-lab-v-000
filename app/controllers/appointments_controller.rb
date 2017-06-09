class AppointmentsController < ApplicationController
  def show
    load_item_by_id
  end

  private
  def load_item_by_id
    @appointment = Appointment.find_by(id: params[:id])
  end
end
