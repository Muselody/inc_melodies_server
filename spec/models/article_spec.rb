require 'rails_helper'

RSpec.describe Article, type: :request do
  describe 'Article Model' do
    it 'valid model for article' do
      gender = Gender.create(name: 'test gender')
      user = User.create(
        email: 'emanuelcarotest@example.com', password: 'articles111',
        password_confirmation: 'articles111', nickname: 'emanuel test'
      )
      article = Article.new(title: 'test title', body: 'test body', gender_id: gender.id, user_id: user.id)
      expect(article).to be_valid
    end
  end
end
