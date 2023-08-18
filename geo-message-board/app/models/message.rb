class Message < ActiveRecord::Base
  validates_presence_of :content
  # validates_presence_of :latitude
  # validates_presence_of :longitude
  reverse_geocoded_by :latitude, :longitude

  belongs_to :user
end
