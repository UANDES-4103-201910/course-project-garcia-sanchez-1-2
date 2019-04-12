json.extract! user_inappropriate, :id, :post_id, :user_id, :created_at, :updated_at
json.url user_inappropriate_url(user_inappropriate, format: :json)
