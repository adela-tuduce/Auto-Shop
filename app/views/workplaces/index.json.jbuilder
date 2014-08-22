json.array!(@workplaces) do |workplace|
  json.extract! workplace, :id, :number
  json.url workplace_url(workplace, format: :json)
end
