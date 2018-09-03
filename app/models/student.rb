class Student

  @@all = []

  def self.all
    @@all
  end

  def self.find_student(name)
    @@all.find do |student|
      student.name == name
    end
  end

  attr_reader :name

  def initialize(name)
    @name = name

    @@all << self
  end


  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

end
