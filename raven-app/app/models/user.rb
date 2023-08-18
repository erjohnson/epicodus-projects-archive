class User < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => ["200x200#", :png], :thumb => ["64x64#", :png] }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name

  has_many :tickets
end
