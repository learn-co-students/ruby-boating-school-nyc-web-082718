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

  def self.pass_student(student_name, test_name)
    test_name.test_status = "passed"
  end

  def self.fail_student(student_name, test_name)
    test_name.test_status = "failed"
  end

  def self.student_grade_percentage(student_name)
    students_tests = BoatingTest.all.select do |test|
      test.student == student_name
    end

    students_passed_tests = students_tests.select do |test|
      test.test_status == "passed"
    end

    students_passed_tests.length.to_f / students_tests.length.to_f
  end
end
