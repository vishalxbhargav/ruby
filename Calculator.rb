class Calculator
  def initialize(n1,n2)
    @n1=n1
    @n2=n2
  end
  def add()
    @n1+@n2
  end
  def minus
    @n1-@n2
  end
  def mult
    @n1*@n2
  end
  def divide
    @n1/@n2
  end
end

cal=Calculator.new(20,10)
puts cal.add
puts cal.minus
puts cal.mult
puts cal.divide