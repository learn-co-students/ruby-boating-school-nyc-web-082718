require "pry"

class BoatingTest

  # should initialize with student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
  # BoatingTest.all returns an array of all boating tests

  attr_accessor :student, :test_name, :test_status, :instructor

  @@all = []

  def initialize(student, test_name, test_status, instructor)
    @student = student
    @test_name = test_name
    @test_status = test_status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end

end

# bt1 = BoatingTest.new("Bobby", "floating", "passed", "Joe")
# bt2 = BoatingTest.new("Drake", "turning", "failed", "Joe")
# bt3 = BoatingTest.new("Kiki", "speeding", "passed", "Mary")
# bt4 = BoatingTest.new("Kiki", "traffic", "failed", "Steve")

# binding.pry
