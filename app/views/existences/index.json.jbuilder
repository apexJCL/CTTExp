json.array!(@existences) do |existence|
  json.extract! existence, :id
  json.url existence_url(existence, format: :json)
end
