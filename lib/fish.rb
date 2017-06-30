class Fish
  attr_accessor :mood
  attr_reader :name
  attr_writer

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
