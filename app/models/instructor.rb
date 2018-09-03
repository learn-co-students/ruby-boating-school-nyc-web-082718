class Instructor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all #return all instructors
    @@all
  end

#take in a student name and test name and return status passed
  def self.pass_student(student_name,test_name)
    passed_tests = BoatingTest.all.select do |test|
      test.name == test_name && test.student.name == student_name
    end
    passed_tests.each do |test|
      test.status = "passed"
    end
  end

#take in a student name and test name and return status failed
  def self.fail_student(student_name, test_name)
    failed_test = BoatingTest.all.select do |test|
      test.name == test_name && test.student.name == student_name
    end
    failed_tests.each do |test|
      test.status = "failed"
    end
  end

#output the percentage of tests that they have passed
  def self.student_grade_percent (student_name)
    student_tests = BoatingTest.all.select do |test|
      test.student.name == student_name
    end
    student_passed_tests = student_tests.select do |test|
      test.status == "passed"
    end
    # binding.pry
    (student_passed_tests.length/student_tests.length.to_f)*100
  end

end
