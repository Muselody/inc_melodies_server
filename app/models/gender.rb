# Model of article gender
class Gender < ApplicationRecord
  has_many :articles
  validates :name, uniqueness: true
end
