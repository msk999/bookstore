json.extract! book, :id, :author_id, :name, :description, :available, :published_at, :created_at, :updated_at
json.url book_url(book, format: :json)
