json.extract! doctor, :id, :patient, :appointment, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
