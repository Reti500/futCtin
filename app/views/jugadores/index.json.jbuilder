json.array!(@jugadores) do |jugadore|
  json.extract! jugadore, :nombre, :posicion
  json.url jugadore_url(jugadore, format: :json)
end
