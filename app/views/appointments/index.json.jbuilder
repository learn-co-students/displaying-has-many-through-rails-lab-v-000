json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :appointment_datetime
  json.url appointment_url(appointment, format: :json)
end
