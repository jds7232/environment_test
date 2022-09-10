json.extract! book, :id, :title, :author, :price, :pdate, :created_at, :updated_at
json.url book_url(book, format: :json)
