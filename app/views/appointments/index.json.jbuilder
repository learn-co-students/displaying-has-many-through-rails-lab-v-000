json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :appointment_datetime, :doctor_id, :patient_id
  json.url appointment_url(appointment, format: :json)
end
