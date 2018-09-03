class Instructor

  @@all = []

  def self.all
    @@all
  end

  def self.student_grade_percentage(name)
    # take in a student first name and output the percentage of tests that they have passed
    student = Student.find_student name
    students_tests = BoatingTest.all.select do |test|
      test.student == student
    end

    passed = students_tests.select do |test|
      test.status == 'passed'
    end.length

    return passed / students_tests.length.to_f
  end

  attr_reader :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def pass_student(student_name, test_name)
    student = Student.find_student student_name

    boating_test = BoatingTest.all.find do |boating|
      boating.name == test_name && boating.student == student
    end

    boating_test.status = 'passed'
  end

  def fail_student(student_name, test_name)
    student = Student.find_student student_name

    boating_test = BoatingTest.all.find do |boating|
      boating.name == test_name && boating.student == student
    end

    boating_test.status = 'failed'
  end

end
