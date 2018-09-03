class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

#should take in a student name and test name and return status passed
  def self.pass_student(student_name, test_name)
    passed_tests = BoatingTest.all.select do |test|
      test.test_name == test_name && test.student.name == student_name
    end

    passed_tests.each do |test|
      test.test_status = "passed"
    end
  end

#take in a student name and test name and return status failed
  def self.fail_student(student_name, test_name)
    failed_tests = BoatingTest.all.select do |test|
      test.test_name == test_name && test.student.name == student_name
    end

    failed_tests.each do |test|
      test.test_status = "failed"
    end
  end

#should take in a student first name and output the percentage of tests that they have passed
  def self.student_grade_percentage(student_name)
    student_tests = BoatingTest.all.select do |test|
      test.student.name == student_name
    end

    student_passed_tests = student_tests.select do |test|
      test.test_status = "passed"
    end

    (student_passed_tests.length/student_tests.length.to_f)*100
  end
end
