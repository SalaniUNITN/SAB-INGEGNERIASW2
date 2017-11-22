json.extract! invoice, :id, :daily_bill, :total_bill, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
