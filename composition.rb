# Action classes encapsulating specific behaviors

class Poop
  def call(caller)
    puts "#{caller.class.name} called poop"
  end
end

class Bark
  def call(caller)
    puts "#{caller.class.name} called bark"
  end
end

class Clean
  def call(caller)
    puts "#{caller.class.name} called clean"
  end
end

class Speak
  def call(caller)
    puts "#{caller.class.name} called speak"
  end
end

# Define the "Man" class with a specific behavior (poop and speak)
class Man
  def initialize
    @poop_behavior = Poop.new
    @speak_behavior = Speak.new
  end

  def poop
    @poop_behavior.call(self)
  end

  def speak
    @speak_behavior.call(self)
  end
end

# Define the "Dog" class with a specific behavior (bark and speak)
class Dog
  def initialize
    @bark_behavior = Bark.new
    @speak_behavior = Speak.new
  end

  def bark
    @bark_behavior.call(self)
  end

  def speak
    @speak_behavior.call(self)
  end
end

# Define the "CleaningRobot" class with a specific behavior (clean)
class CleaningRobot
  def initialize
    @clean_behavior = Clean.new
  end

  def clean
    @clean_behavior.call(self)
  end
end

# Define the "BarkingRobotDog" class, which has both behaviors (bark, clean, and speak)
class BarkingRobotDog
  def initialize
    @bark_behavior = Bark.new
    @clean_behavior = Clean.new
    @speak_behavior = Speak.new
  end

  def bark
    @bark_behavior.call(self)
  end

  def clean
    @clean_behavior.call(self)
  end

  def speak
    @speak_behavior.call(self)
  end
end

# Usage:

man = Man.new
man.poop  # Outputs: Man called poop
man.speak  # Outputs: Man called speak

dog = Dog.new
dog.bark  # Outputs: Dog called bark
dog.speak  # Outputs: Dog called speak

cleaning_robot = CleaningRobot.new
cleaning_robot.clean  # Outputs: CleaningRobot called clean

barking_robot_dog = BarkingRobotDog.new
barking_robot_dog.bark  # Outputs: BarkingRobotDog called bark
barking_robot_dog.clean  # Outputs: BarkingRobotDog called clean
barking_robot_dog.speak  # Outputs: BarkingRobotDog called speak
