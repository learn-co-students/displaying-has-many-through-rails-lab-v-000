json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :appointment_dateime, :patient_id, :doctor_id
  json.url appointment_url(appointment, format: :json)
end
