json.array!(@ad_holders) do |ad_holder|
  json.extract! ad_holder, :id, :type, :description, :price, :available
  json.url ad_holder_url(ad_holder, format: :json)
end
