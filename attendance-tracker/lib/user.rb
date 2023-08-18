class User

  @@users = []

  attr_reader :name, :current_lesson

  def initialize attributes
    @name = attributes[:name]
    @current_lesson = attributes[:lesson]
  end

  def self.all
    @@users
  end

  def self.clear
    @@users = []
  end

  def self.find name
    User.all.detect { |x| x.name == name }
  end

  def self.login name
    query = User.find(name)
    if query == nil
      new_user = User.new({:name => name})
      new_user.save
      new_user
    else
      query
    end
  end

  def save
    @@users << self
  end

  def remove
    User.all.delete(self)
  end

  def time_stamps
    TimeStamp.find(@name)
  end
end
