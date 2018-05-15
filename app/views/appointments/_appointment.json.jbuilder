json.extract! appointment, :id, :appointment_datetime, :patient, :doctor, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
