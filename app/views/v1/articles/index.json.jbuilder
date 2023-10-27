json.array! @articles do |article|
  json.id article.hashid
  json.title article.title
  json.author do
    json.nickname article&.user&.nickname
    # You can add more user info in the future adding on here
  end
  json.gender article&.gender&.name
  json.created_at article.created_at
end
