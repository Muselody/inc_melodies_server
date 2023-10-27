# Model of article gender
class Gender < ApplicationRecord
  has_many :articles
end
