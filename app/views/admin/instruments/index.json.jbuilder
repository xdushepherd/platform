json.array!(@admin_instruments) do |admin_instrument|
  json.extract! admin_instrument, :id
  json.url admin_instrument_url(admin_instrument, format: :json)
end
