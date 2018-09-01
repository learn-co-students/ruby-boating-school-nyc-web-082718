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

  def self.get_test(student_name, boat_test)
    BoatingTest.all.find do |this_test|
      this_test.test_name == boat_test && this_test.student.first_name == student_name
    end
  end

  def self.pass_student(student_name, boat_test)
    self.get_test(student_name, boat_test).status = 'passed'
  end

  def self.fail_student(student_name, boat_test)
    self.get_test(student_name, boat_test).status = 'failed'
  end

  def self.student_grade_percentage(student_name)
    all_tests = BoatingTest.all.select do |this_test|
      this_test.student.first_name == student_name
    end
    # binding.pry
    "#{all_tests.select do |this_test|
      this_test.status == 'passed'
    end.count / all_tests.count.to_f * 100}%"
  end
end
