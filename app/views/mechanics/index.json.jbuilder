json.array!(@mechanics) do |mechanic|
  json.extract! mechanic, :id, :name, :age, :experience
  json.url mechanic_url(mechanic, format: :json)
end
