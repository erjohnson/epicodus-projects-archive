class Project < ActiveRecord::Base
  has_many :stories

  validates :name, :presence => true

  def total
    self.stories.count
  end
end
