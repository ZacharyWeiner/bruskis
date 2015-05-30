json.array!(@brews) do |brew|
  json.extract! brew, :id, :type, :grams_coffee, :ounces_water, :duration, :duration_type, :roast_id, :description, :rating
  json.url brew_url(brew, format: :json)
end
