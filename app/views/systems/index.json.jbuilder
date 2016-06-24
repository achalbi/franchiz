json.array!(@systems) do |system|
  json.extract! system, :id, :title, :description
  json.url system_url(system, format: :json)
end
