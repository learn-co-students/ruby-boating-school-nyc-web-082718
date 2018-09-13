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
    BoatingTest.all.each do |test_instance|
      if test_instance.student.first_name == student_name && test_instance.test_name == test_name
        test_instance.test_status = "Pass"
        return test_instance
      end
    end
  end

  def self.fail_student(student_name, test_name)
    BoatingTest.all.each do |test_instance|
      if test_instance.student.first_name == student_name && test_instance.test_name == test_name
        test_instance.test_status = "Fail"
        return test_instance
      end
    end
  end

  def self.student_grade_percentage(student_name)
    passed_tests = BoatingTest.all.select do |test_instance|
      test_instance.student.first_name == student_name && test_instance.test_status == "Pass"
    end
    number_of_passed_tests = passed_tests.length.to_f
    total_tests = BoatingTest.all.select do |test_instance|
      test_instance.student.first_name == student_name
    end
    total_number_of_tests = total_tests.length.to_f
    passed_percentage = number_of_passed_tests / total_number_of_tests * 100
    passed_percentage_string = "#{student_name} has passed #{passed_percentage}% of their tests"
    passed_percentage_string
  end

end
