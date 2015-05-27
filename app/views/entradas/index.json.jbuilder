json.array!(@entradas) do |entrada|
  json.extract! entrada, :id, :identrada, :name, :description
  json.url entrada_url(entrada, format: :json)
end
