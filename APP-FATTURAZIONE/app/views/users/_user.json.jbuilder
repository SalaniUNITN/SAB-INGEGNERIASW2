json.extract! user, :id, :name, :surname, :email, :telephone, :p_iva, :cf, :street_name, :cap, :city, :street_number, :created_at, :updated_at
json.url user_url(user, format: :json)
