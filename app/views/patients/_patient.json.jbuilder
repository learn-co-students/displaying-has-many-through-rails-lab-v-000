json.extract! patient, :id, :name, :appointment_datetime, :created_at, :updated_at
json.url patient_url(patient, format: :json)
