class Dog
	def speak
		"woof"
	end
end

class Duck
	def speak
		"Quack"
	end
end

class Human
	def speak
		"Hello"
	end
end

def make_speak(animal)
	puts animal.speak
end

dog=Dog.new
duck=Duck.new
human=Human.new

make_speak(dog)
make_speak(duck)
make_speak(human)