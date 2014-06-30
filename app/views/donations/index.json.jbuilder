json.array!(@donations) do |donation|
  json.extract! donation, :id, :quantity, :user_id, :project_item_id
  json.url donation_url(donation, format: :json)
end
