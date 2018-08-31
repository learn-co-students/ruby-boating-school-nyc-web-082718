class Student
  @@all = []
  attr_accessor :first_name

  def initialize(first_name)
    @first_name = first_name

    @@all << self
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

  def self.find_student(name)
    @@all.find do |student|
      student.first_name == name
    end
  end

  def self.all
    @@all
  end
end
