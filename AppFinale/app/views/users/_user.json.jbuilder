json.extract! user, :id, :Name, :Surname, :EMail, :Telephone, :Partita_Iva, :CF, :Street_name, :cap, :city, :street_number, :created_at, :updated_at
json.url user_url(user, format: :json)
