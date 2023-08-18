require 'rails_helper'

describe User do
  describe '#recommend' do
    it 'returns a hash of user ids' do
      joe = User.create(email: 'joe@joe.com', password_digest: 'joe')
      bob = User.create(email: 'bob@bob.com', password_digest: 'bob')
      mary = User.create(email: 'mary@mary.com', password_digest: 'mary')
      tag1 = Tag.create(photo_id: 1, user_id: joe.id, tagged_by: bob.id)
      tag2 = Tag.create(photo_id: 2, user_id: joe.id, tagged_by: bob.id)
      tag3 = Tag.create(photo_id: 2, user_id: joe.id, tagged_by: mary.id)
      expect(joe.recommend).to eq { bob.id => 2, mary.id => 1 }
    end
  end
end
