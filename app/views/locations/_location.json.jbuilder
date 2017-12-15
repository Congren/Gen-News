json.extract! location, :id, :country, :city, :zip, :created_at, :updated_at
json.url location_url(location, format: :json)
