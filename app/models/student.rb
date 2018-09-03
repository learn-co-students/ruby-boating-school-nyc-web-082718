class Student

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end

  def add_boating_test(test_name, status, instructor)
    new_boating_test = BoatingTest.new(test_name, status, instructor)
    new_boating_test.student = self
  end

  def self.find_student(name)
    @@all.find do |student|
      student.name == name
    end
  end

end
