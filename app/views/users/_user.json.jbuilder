json.extract! user, :id, :interest_id, :saved_article_id, :first_name, :last_name, :email, :password, :admin?, :created_at, :updated_at
json.url user_url(user, format: :json)
