class Instructor
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.pass_student(student, test_name)
    find_test(student, test_name).status = "passed"
  end

  def self.fail_student(student, test_name)
    find_test(student, test_name).status = "failed"
  end

  def self.find_test(student, test_name)
    BoatingTest.all.find do |boating_test|
      boating_test.test_name == test_name && boating_test.student.first_name = student
    end
  end

  def self.student_grade_percentage(student)
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
