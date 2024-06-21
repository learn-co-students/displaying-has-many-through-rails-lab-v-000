json.array!(@patients) do |patient|
  json.extract! patient, :id
  json.url patient_url(patient, format: :json)
end
