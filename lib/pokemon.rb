require 'pry'

class Pokemon
  attr_accessor :id, :name, :type, :db

  @@all = []

  def initialize(name, type, db)
    binding.pry
    @id = id
    @name = name
    @type = type
    @db = db

    @@all << self
  end

  def save

  end
end
