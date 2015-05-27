json.array!(@tipomenus) do |tipomenu|
  json.extract! tipomenu, :id, :idtipo, :name, :description
  json.url tipomenu_url(tipomenu, format: :json)
end
