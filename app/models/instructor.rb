class Instructor

  attr_accessor :instructor_name
  attr_reader

  @@all = []

  def initialize(instructor_name)
    @instructor_name = instructor_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(student_name, test_name)
    # should take in a student name and test name and return status failed
    # Student.find_student(student_name)
    BoatingTest.all.each do |details|
      if details.student_name == Student.find_student(student_name) &&
        details.test_name == test_name
        details.status = "passed"
        details
        # binding.pry
      end
    end
  end

  def self.fail_student(student_name, test_name)
    # should take in a student name and test name and return status failed\
    BoatingTest.all.each do |details|
      if details.student_name == Student.find_student(student_name) &&
        details.test_name == test_name
        details.status = "failed"
        details
        # binding.pry
      end
    end
  end

  def self.student_grade_percentage(student_name)
    # should take in a student first name and output the percentage of tests that they have passed
    total_tests = []
    BoatingTest.all.each do |details|
      if details.student_name == Student.find_student(student_name)
        total_tests << details.status
        # binding.pry
      end
    end
    denominator = total_tests.count
    passed_tests = []
    total_tests.each do |result|
      if result == "passed"
        passed_tests << result
      end
    end
    numerator = passed_tests.count
    return 100*numerator/denominator
  end

end
