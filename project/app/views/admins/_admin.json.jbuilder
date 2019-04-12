json.extract! admin, :id, :mail, :password, :username, :geofence, :created_at, :updated_at
json.url admin_url(admin, format: :json)
