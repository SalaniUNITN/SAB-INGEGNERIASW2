json.extract! invoice, :id, :hours, :hourly_wage, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
