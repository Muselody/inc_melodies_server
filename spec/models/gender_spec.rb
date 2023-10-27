require 'rails_helper'

RSpec.describe Gender, type: :model do
  describe 'Gender Model' do
    it 'valid model for gender' do
      gender = Gender.new(name: 'test gender')
      expect(gender).to be_valid
    end
  end
end
