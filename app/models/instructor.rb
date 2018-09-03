class Instructor

  attr_accessor :name, :test_name, :test_status, :instructor, :first_name

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self,test_name, test_status, instructor)
  end

  def self.pass_student(first_name, test_name)
    #binding.pry
    passing = BoatingTest.all.find {|info| info.student.first_name == first_name && info.test_name == test_name}
    passing.test_status = "passed"
  end

  def self.failed_student(first_name, test_name)
    #binding.pry
    failing = BoatingTest.all.find {|info| info.student.first_name == first_name && info.test_name == test_name}
    failing.test_status = "failed"
  end

  def self.student_grade_percentage(first_name)
    #select the student I'm looking to get info from
    #save how many times he's taken the test
    #find how many times he's got "passing" in BoatingTest
    #Divide that into the number of all of his tests and multiply by 100
    test_scores = BoatingTest.all.select {|info| info.student.first_name == first_name}
    all_tests = test_scores.length.to_f
    passing_tests = test_scores.select {|info| info.test_status == "passed"}
    passing_total = passing_tests.length.to_f
    final_answer = ((passing_total/all_tests)*100).to_i
    "#{final_answer}%"
  end

end
