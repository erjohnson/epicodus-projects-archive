require './lib/lists'

class Task
  def initialize descr
    @descr = descr
    @due_date = "unknown"
    @priority = 5
    @complete = false
  end
  def descr
    puts @descr
    # @descr
  end
end
