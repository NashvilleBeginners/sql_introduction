json.extract! title, :id, :name, :published_at, :publisher_id, :created_at, :updated_at
json.url title_url(title, format: :json)