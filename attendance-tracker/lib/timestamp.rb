class TimeStamp

  @@timestamps = []

  attr_reader :user_name, :time

  def initialize name
    @user_name = name
    @time = Time.now.strftime("%m/%d/%Y - %I:%M%p")
  end

  def self.all
    @@timestamps
  end

  def self.clear
    @@timestamps = []
  end

  def self.find name
    TimeStamp.all.select { |x| x.user_name == name  }
  end

  def save
    @@timestamps << self
  end

  def remove
    TimeStamp.all.delete(self)
  end

  def sample_time_one
    @time = Time.new(2014, 8, 13, 8, 53).strftime("%m/%d/%Y - %I:%M%p")
  end

  def sample_time_two
    @time = Time.new(2014, 8, 12, 8, 053).strftime("%m/%d/%Y - %I:%M%p")
  end
end
