json.array!(@monsters) do |monster|
  json.extract! monster, :name, :email
  json.url monster_url(monster, format: :json)
end