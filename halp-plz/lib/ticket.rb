class Ticket

  @@tickets = []

  attr_reader :partner_one, :partner_two, :subject, :issue, :time_stamp
  attr_accessor :done

  def initialize attributes
    @partner_one = attributes[:partner_one]
    @partner_two = attributes[:partner_two]
    @subject = attributes[:subject]
    @issue = attributes[:issue]
    @time_stamp = Time.new.strftime("%I:%M%p")
    @done = false
  end

  def self.all
    @@tickets
  end

  def self.clear
    @@tickets = []
  end

  def save
    @@tickets << self
  end

  def remove
    Ticket.all.delete(self)
  end

  def mark_done
    if num = Ticket.all.index(self)
      ticket = Ticket.all[num]
      if !ticket.done
        ticket.done = true
      else
        "Already marked done."
      end
    else
      "Ticket is not on the list."
    end
  end
  
end
