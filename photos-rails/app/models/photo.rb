class Photo < ActiveRecord::Base
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment :picture,
  :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }

  has_many :tags
  has_many :favorites
  has_many :users, through: :tags

end


