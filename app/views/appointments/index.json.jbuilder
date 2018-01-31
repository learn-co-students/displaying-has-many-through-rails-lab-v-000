json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :patient_id, :doctor_id, :appointment_datetime
  json.url appointment_url(appointment, format: :json)
end
