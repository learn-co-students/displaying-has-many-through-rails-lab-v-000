module AppointmentsHelper
  def full_date(dt)
    dt.strftime("%B %e, %Y at %H:%M %p")
  end

  module_function :full_date
end
