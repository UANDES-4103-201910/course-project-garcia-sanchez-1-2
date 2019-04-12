json.extract! profile, :id, :photo, :biography, :geofence, :country, :city, :registred_user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
