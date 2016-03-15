json.array!(@autos) do |auto|
  json.extract! auto, :id, :marca, :modelo, :latitud, :longitud
  json.url auto_url(auto, format: :json)
end
