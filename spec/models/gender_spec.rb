require 'rails_helper'

RSpec.describe Gender, type: :model do
  describe 'Gender Model' do
    it 'valid model for gender' do
      gender = Gender.create(name: 'test gender')
      expect(gender).to be_valid
    end
  end
  describe 'validations' do
    it 'validates uniqueness of title' do
      Gender.create(name: 'Music')
      duplicate_gender = Gender.new(name: 'Music')
      expect(duplicate_gender.valid?).to be_falsey
      expect(duplicate_gender.errors[:name]).to include('has already been taken')
    end
  end
end
