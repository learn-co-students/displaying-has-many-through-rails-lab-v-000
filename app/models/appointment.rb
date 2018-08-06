class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor


  def human_time

    # appointment_datetime.to_formatted_s(:long_ordinal)
    appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end

  # def self.not_found
  #   # raise ActionController::RoutingError.new('Not Found')
  #    render :status => 404
  # end
end
