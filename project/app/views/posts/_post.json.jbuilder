json.extract! post, :id, :title, :description, :country, :city, :geofence, :registred_user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
