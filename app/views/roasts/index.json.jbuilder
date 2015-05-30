json.array!(@roasts) do |roast|
  json.extract! roast, :id, :name, :type, :description, :picture, :brand_id
  json.url roast_url(roast, format: :json)
end
