class Location < ActiveRecord::Base
  validates_uniqueness_of :name
  
  has_many :messages
end
