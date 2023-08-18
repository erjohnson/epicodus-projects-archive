class User < ActiveRecord::Base
  has_secure_password
  validates_uniqueness_of :email

  has_many :tags
  has_many :favorites
  has_many :photos, through: :tags

  def recommend
    user_weights = {}
    self.tags.each do |tag|
      if user_weights.has_key?(tag.tagged_by)
        user_weights[tag.tagged_by] += 1
      else
        user_weights[tag.tagged_by] = 1
      end
    end
    rec_photos = []
    user_weights.sort_by { |key, value| value }
    user_weights.each_pair do |key, value|
      num = key.to_i
      rec_photos << Photo.find_by(uploaded_by: num)
    end
    rec_photos
  end
end
