class BoatingTest

  @@all = []
  attr_accessor :student, :instructor, :test_name, :test_status
  
  def initialize(student, instructor, test_name, test_status)
    @student = student
    @instructor = instructor
    @test_name = test_name
    @test_status = test_status
    @@all << self
  end

  def self.all
    @@all
  end

end # this is the end of joint table for instructor and student

#a boating test_name (String), a boating test_status (String)
#BoatingTest.all returns an array of all boating tests
