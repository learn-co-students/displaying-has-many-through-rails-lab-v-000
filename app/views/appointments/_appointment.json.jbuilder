json.extract! appointment, :id, :appointment_datetime, :patient_id, :doctor_id, :integer, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
