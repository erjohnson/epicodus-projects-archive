class User < ActiveRecord::Base
  has_secure_password
  validates_uniqueness_of :name

  has_many :messages
end
