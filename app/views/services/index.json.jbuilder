json.array!(@services) do |service|
  json.extract! service, :id, :name, :time, :price
  json.url service_url(service, format: :json)
end
