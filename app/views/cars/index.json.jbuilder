json.array!(@cars) do |car|
  json.extract! car, :id, :number, :client_id, :make, :model
  json.url car_url(car, format: :json)
end
