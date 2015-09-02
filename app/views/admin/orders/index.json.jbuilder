json.array!(@admin_orders) do |admin_order|
  json.extract! admin_order, :id, :name, :address, :status, :payment_method
  json.url admin_order_url(admin_order, format: :json)
end
