json.extract! saved_article, :id, :article_id, :user_id, :created_at, :updated_at
json.url saved_article_url(saved_article, format: :json)
