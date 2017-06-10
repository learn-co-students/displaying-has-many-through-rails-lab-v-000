json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name
  json.url doctor_url(doctor, format: :json)
end
