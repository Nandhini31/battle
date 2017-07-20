class Player


  attr_accessor :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def hurt
    @hp -= 10
  end
end
