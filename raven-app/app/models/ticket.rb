class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :lesson

  validates_presence_of :user_id, :lesson_id, :question

  scope :open, -> { where(closed: false) }
  scope :answered, -> { where(closed: true) }

  def take_ticket
    self.update(taken: true, taken_at: Time.new())
  end
end
