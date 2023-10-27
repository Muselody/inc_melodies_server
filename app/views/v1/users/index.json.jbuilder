json.array! @users do |user|
  json.id user.hashid
  json.email user.email
  json.nickname user.nickname
  json.created_at user.created_at
end
