class Student

  attr_accessor :student_name
  attr_reader

  @@all = []

  def initialize(student_name)
    @student_name = student_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    # should initialize a new boating test with a student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(student_name)
    # will take in a student first name and output that student
    @@all.each do |student|
      if student_name == student.student_name
        return student
      end
    end
    # binding.pry
  end

end
