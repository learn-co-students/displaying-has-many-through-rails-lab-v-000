module ApplicationHelper
  def readable_time(time)
    time.strftime("%B %e, %Y at %R")
  end

end
