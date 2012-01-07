class Grade
  def initialize(department)
    @grades = Array.new()
    0.upto(3).each do |i|
      @grades[i] = Note.find_all_by_department_and_grade(department,i+1)
    end
    @grades
  end
  
  def [](index)
    @grades[index]
  end
  
  def length
    @grades.length
  end
  
  def each &b
    @grades.each &b
  end
end