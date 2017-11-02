json.extract! user, :id, :location_id, :saved_article_id, :first_name, :last_name, :email, :password, :admin?, :interests, :created_at, :updated_at
json.url user_url(user, format: :json)
