class Pokemon
  attr_reader :id, :name, :type, :db

  def initialize(id, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
    @all << self
  end

  def save

  end
end
