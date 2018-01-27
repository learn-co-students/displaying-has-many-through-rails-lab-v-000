class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def date_fix
  	date= self.appointment_datetime.split('T')[0]
  	@year = date.split("-")[0].to_i
  	@month = date.split("-")[1].to_i
  	@day = date.split("-")[2].to_i
  	
  	@month_name = Date::MONTHNAMES(@month[1])
  	
  	binding.pry
  	# %H-%M-%S

  	
  	
  	
  	
  	
  end

end
