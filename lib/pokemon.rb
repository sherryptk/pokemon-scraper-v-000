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

  def self.save(name, type, db)
    db.execute("INSERT INTO Pokemon (name, type) VALUES (?, ?)", [name, type])
  end

  def self.find(poke_id, db)
    found = db.execute("SELECT * FROM Pokemon WHERE Pokemon.id = ?", [poke_id])
    new = Pokemon.new(id: poke_id, name: found[0][1], type: found[0][2], db: db)
    new
  end

  def alter_hp(new_hp, db)
    db.execute("UPDATE Pokemon SET hp = (?)", [new_hp])
  end
end
