require 'pry'

class Pokemon
  attr_accessor :id, :name, :type, :db

  @@all = []

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db

    @@all << self
  end

  def self.save(name, type)
    @db.execute("INSERT INTO Pokemon (name, type) VALUES (?, ?)", [name, type])
  end

  def .find

  end
end
