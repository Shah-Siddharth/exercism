class PartyRobot
  def self.welcome(name : String) : String
    "Welcome to my party, #{name}!"
  end

  def self.happy_birthday(name : String, age : Int) : String
    "Happy birthday #{name}! You are now #{age} years old!"
  end

  def self.assign_table(name : String, direction : String, table : Int, distance : Float64, neighbor : String) : String
    seatmate_name = neighbor[0].to_s + neighbor[-1].to_s
    self.welcome(name) + "\nYou have been assigned to table #{table}. Your table is #{direction}, exactly #{distance.round(1)} meters from here." + "\nYou will be sitting next to #{seatmate_name}."
  end
end
