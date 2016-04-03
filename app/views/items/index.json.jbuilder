json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :room, :puchase_price
  json.url item_url(item, format: :json)
end
