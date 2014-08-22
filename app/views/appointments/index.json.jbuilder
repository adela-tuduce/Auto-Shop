json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :car_id, :hour, :date, :workplace_id
  json.url appointment_url(appointment, format: :json)
end
