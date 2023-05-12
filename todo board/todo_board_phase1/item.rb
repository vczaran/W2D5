class Item

  def self.valid_date?(date)
    parts = date.split("-")

    if (parts[0].length == 4) && (parts[1].to_i <= 12) && (parts[2].to_i <= 31) 
        true
    else
       false
    end

  end

  def initialize(title, deadline, description)
    raise "invalid date" unless Item.valid_date?(deadline)

    @title = title
    @deadline = deadline
    @description = description

  end

  attr_accessor :title, :description
  attr_reader :deadline

  def deadline=(new_deadline)
    raise "invalid date" unless Item.valid_date?(new_deadline)
    @deadline = new_deadline
  end
  
end

