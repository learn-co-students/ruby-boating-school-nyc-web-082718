class Student

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @all
  end

  def add_boating_test
    BoatingTest.new(self, test_name, test_status, instructor)
  end

# will take in a student first name and output that student
  def self.find_student(name)
    self.find do |student|
      student.name == name
    end
  end
end
