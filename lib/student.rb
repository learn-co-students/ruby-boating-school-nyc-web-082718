class Student

  @@all = []
  attr_accessor :first_name

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, instructor, test_name, test_status)
  end

  def self.find_student(first_name)
    #search @@all to find a student
    @@all.each do |instance|
      if instance.first_name == first_name
        puts instance.first_name
        return instance.first_name
      end
    end
  end

end #this is the end of the student class

#should initialize with first_name

#Student.all should return all of the student instances

#add_boating_test should initialize a new boating test with a student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)

#Student.find_student will take in a student first name and output that student
