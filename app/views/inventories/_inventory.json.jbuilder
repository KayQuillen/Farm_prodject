json.extract! inventory, :id, :type_of, :amount, :expiration, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
