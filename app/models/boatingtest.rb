class BoatingTest

  attr_accessor :test_name, :status, :student_name, :instructor_name
  attr_reader

  @@all = []

  def initialize(student_name, test_name, status = "pending", instructor_name)
    @student_name = student_name
    @test_name = test_name
    @instructor_name = instructor_name
    @status = status
    @@all << self
  end

  def self.all
    @@all
  end

end
