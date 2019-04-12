json.extract! registred_user, :id, :mail, :password, :username, :created_at, :updated_at
json.url registred_user_url(registred_user, format: :json)
