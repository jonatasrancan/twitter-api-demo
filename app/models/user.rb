class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
end
