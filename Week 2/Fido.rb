class Animal
  def name=(value)
    @name =value
  end

  def name
    @name
  end
end
fido=Animal.new
fido.name=3
class Canine < Animal
  def bark
    p "bork " * 3 +"!"
  end
end
spot=Canine.new
spot.name="spot"
spot.bark
