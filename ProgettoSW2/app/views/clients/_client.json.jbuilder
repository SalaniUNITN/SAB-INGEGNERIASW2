json.extract! client, :id, :name, :email, :p_iva, :city, :street, :cap, :street_number, :created_at, :updated_at
json.url client_url(client, format: :json)
