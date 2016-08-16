json.array!(@doctors) do |doctor|
  json.extract! doctor, :id
  json.url doctor_url(doctor, format: :json)
end
