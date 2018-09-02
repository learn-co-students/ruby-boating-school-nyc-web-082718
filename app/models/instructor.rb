class Instructor

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.pass(student, test_name)
    BoatingTest.all.select do |exam|
      if exam.student == student && exam.test_name == test_name
         exam.test_status = "passed"
      end
    end
  end


  def self.fail(student, test_name)
    BoatingTest.all.select do |exam|
      if exam.student == student && exam.test_name == test_name
         exam.test_status = "failed"
      end
    end
  end
end
