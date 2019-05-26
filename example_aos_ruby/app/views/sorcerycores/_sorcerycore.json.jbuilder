json.extract! sorcerycore, :id, :email, :crypted_password, :salt, :created_at, :updated_at
json.url sorcerycore_url(sorcerycore, format: :json)
