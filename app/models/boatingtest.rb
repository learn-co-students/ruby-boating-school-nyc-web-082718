class BoatingTest

  attr_reader :name, :instructor
  attr_accessor :status, :student

  @@all = []

  def initialize(name, status, instructor)
    @name = name
    @status = status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end

end
