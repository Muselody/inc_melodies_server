json.array! @articles do |article|
  json.id article.hashid
  json.title article.title
  json.created_at article.created_at
end
