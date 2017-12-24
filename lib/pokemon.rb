class Pokemon
  attr_reader :id, :name, :type, :db

  def initialize(name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def save

  end
end
