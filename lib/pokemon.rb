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

  def self.save(name:, type:, db:)
    database_connection.execute("INSERT INTO pokemon (name,  type) VALUES (?,?)", name, type)
  end

  # def self.save(name, breed, age, database_connection)
  #   database_connection.execute("INSERT INTO cats (name, breed, age) VALUES (?, ?, ?)",name, breed, age)
  # end
end
