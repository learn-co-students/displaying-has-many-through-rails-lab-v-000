module DoctorsHelper

    def convert_datetime(datetime)
      datetime.strftime("%B %d, %Y at %H:%M")
    end
end
