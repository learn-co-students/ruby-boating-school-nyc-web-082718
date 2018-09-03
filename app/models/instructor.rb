class Instructor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(student_name, test_name)
    BoatingTest.all.map do |boating_test|
      if boating_test.student.first_name == student_name && boating_test.name == test_name
        boating_test.status = "passed"
      end
    end
  end

  def self.fail_student(student_name, test_name)
    BoatingTest.all.map do |boating_test|
      if boating_test.student.first_name == student_name && boating_test.name == test_name
        boating_test.status = "failed"
      end
    end
  end

  def self.student_grade_percentage(student_name)
    student_array = BoatingTest.all.select do |boating_test|
      boating_test.student.first_name == student_name
    end
    passed_array = student_array.select do |boating_test|
      boating_test.status == "passed"
    end
    (passed_array.size.to_f/student_array.size.to_f) * 100.0
  end

end
