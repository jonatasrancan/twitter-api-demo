require 'rails_helper'

describe User do
  context 'validations' do
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:password) }

    it 'validates uniqueness of username' do
      FactoryGirl.create(:user)

      user = User.new(username: 'admin', password: '123456')

      user.valid?

      expect(user.errors.messages[:username]).to include "has already been taken"
    end
  end
end
