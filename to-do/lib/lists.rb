require './lib/tasks'

class List
  def initialize name
    @name = name
    @tasks = []
  end
  def add_task description
    @tasks << Task.new(description)
  end
  def name
    @name
  end
  def task_list
    @tasks.each do |task|
      puts task.descr
    end
  end
end
