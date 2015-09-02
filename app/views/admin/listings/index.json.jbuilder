json.array!(@admin_listings) do |admin_listing|
  json.extract! admin_listing, :id, :name, :description, :price, :stock
  json.url admin_listing_url(admin_listing, format: :json)
end
