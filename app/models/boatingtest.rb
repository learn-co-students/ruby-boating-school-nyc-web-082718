class BoatingTest
  attr_accessor :student, :instructor, :test_status, :test_name

  @@all = []

  def initialize(student, test_name, test_status, instructor)
    @student = student
    @instructor = instructor
    @test_status = test_status
    @test_name = test_name

    @@all << self
  end

  def self.all
    @@all
  end
end
