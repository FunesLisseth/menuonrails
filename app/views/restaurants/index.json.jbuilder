json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :description, :location
  json.url restaurant_url(restaurant, format: :json)
end
