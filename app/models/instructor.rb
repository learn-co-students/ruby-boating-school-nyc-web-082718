class Instructor
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def pass_student(student, test_name)
    find_test(test_name).status = "passed"
  end

  def fail_student(student, test_name)
    find_test(test_name).status = "failed"
  end

  def find_test(test_name)
    BoatingTest.all.find do |boating_test|
      boating_test.test_name == test_name
    end
  end

  def student_grade_percentage(student)
    student_tests = BoatingTest.all.select do |boating_test|
      boating_test.student == student
    end
    passed = student_tests.select do |t|
      t.status == "passed"
    end
    (passed.length).to_f / (student_tests.length).to_f * 100
  end

  def self.all
    @@all
  end
end
