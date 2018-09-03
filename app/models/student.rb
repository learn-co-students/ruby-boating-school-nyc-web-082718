require "pry"

class Student

  # * should initialize with first_name
  # * Student.all should return all of the student instances
  # * Student#add_boating_test should initialize a new boating test with a student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
  # * Student.find_student will take in a student first name and output that student

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all  << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(name)
    Student.all.select do |student_obj|
      student_obj.name == name
    end
  end

end


# s1 = Student.new("Bobby")
# s2 = Student.new("Kiki")
# s3 = Student.new("Drake")



# binding.pry
