json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :ser_number, :price, :user_id, :status
  json.url reservation_url(reservation, format: :json)
end
