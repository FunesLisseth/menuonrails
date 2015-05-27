json.array!(@segundos) do |segundo|
  json.extract! segundo, :id, :idsegundo, :name, :description
  json.url segundo_url(segundo, format: :json)
end
