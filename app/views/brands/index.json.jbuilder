json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :phone, :website, :picture
  json.url brand_url(brand, format: :json)
end
