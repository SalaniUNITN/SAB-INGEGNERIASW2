json.extract! invoice, :id, :name, :p_ivatotal, :bill, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
