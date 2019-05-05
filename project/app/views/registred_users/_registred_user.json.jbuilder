json.extract! registred_user, :id, :mail, :password, :username,:name,:last_name,:phone,:city,:country, :created_at, :updated_at
json.url registred_user_url(registred_user, format: :json)
