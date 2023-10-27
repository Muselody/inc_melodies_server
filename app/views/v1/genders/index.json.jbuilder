json.array! @genders do |gender|
  json.id gender.hashid
  json.name gender.name
end
