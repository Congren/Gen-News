json.extract! article, :id, :title, :date, :source, :description, :emotional, :political, :consensus, :author, :pic, :created_at, :updated_at
json.url article_url(article, format: :json)
