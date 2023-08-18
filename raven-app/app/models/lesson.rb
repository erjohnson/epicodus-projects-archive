class Lesson < ActiveRecord::Base
  validates_presence_of :name, :section

  has_many :tickets
end
