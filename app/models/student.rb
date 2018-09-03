class Student

  attr_accessor :first_name, :test_name, :test_status, :instructor

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all.push(self)
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.all
    @@all
  end

  def self.find_student(first_name)
    self.all.find {|info| info.first_name === first_name}
  end
end
