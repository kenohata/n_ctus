class Department
  def initialize
    @departments = Hash.new()
  
    @@mapping_hash.each do |index,key|
      @departments[key] = Grade.new(key)
    end
    @departments
  end

  def [](index)
    @departments[index]
  end

  def each &b
    @departments.each &b
  end
  
  @@mapping_hash = {
    # "61" => "MA",
    "62" => "PH",
    # "63" => "II",
    # "64" => "II",
    # "65" => "II",
    # "66" => "II",
    # "67" => "II",
    # "68" => "II",
    # "69" => "II",
    # "70" => "II",
    # "71" => "II",
    # "72" => "II",
    "73" => "EE"
  }
end