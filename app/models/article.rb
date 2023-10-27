# article model
class Article < ApplicationRecord
  belongs_to :gender
  belongs_to :user
end
