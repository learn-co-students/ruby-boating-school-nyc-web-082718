class BoatingTest

  attr_accessor :test_name, :test_status
  attr_reader :instructor, :student

  @@all = []

  def initialize(student, test_name, test_status, instructor)
    @test_name = test_name
    @test_status = test_status
    @student = student
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end
end
