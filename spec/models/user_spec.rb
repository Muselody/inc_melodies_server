require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User Model' do
    it 'valid model for User' do
      user = User.new(
        email: 'emanuelcarol@example.com',
        password: 'articles111',
        password_confirmation: 'articles111',
        nickname: 'emanuel carol'
      )
      expect(user).to be_valid
    end
  end
end
