class Venue
  attr_reader :name, :capacity, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron)
    @patrons << patron
  end

  def yell_at_patrons
    @patrons.map(&:upcase)
  end

  def over_capacity?
    if @patrons.length() > @capacity
      return true
    else
      return false
    end
  end

  def kick_out
    @patrons.pop()
  end
end
