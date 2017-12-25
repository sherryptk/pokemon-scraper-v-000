require 'pry'

class Pokemon
  attr_accessor :id, :name, :type, :db, :hp

  @@all = []

  def initialize(id:, name:, type:, hp: nil, db:)
    @id = id
    @name = name
    @type = type
    @hp = hp
    @db = db
    @@all << self
  end
  # The find method should create a new Pokemon object with an id, type,
  # name AND hp after selecting their row from the database by their id number.
  # remember to also update the initialize method to accept an argument of hp
  # that defaults to nil if not set (so it still passes the non-bonus tests)

  def self.save(name, type, db)
    db.execute("INSERT INTO Pokemon (name, type) VALUES (?, ?)", [name, type])
  end

  def self.find(poke_id, db)
    found = db.execute("SELECT * FROM Pokemon WHERE Pokemon.id = ?", [poke_id])
    new = Pokemon.new(id: poke_id, name: found[0][1], type: found[0][2], db: db)
    new
  end

  def alter_hp(new_hp, db)
    @hp = new_hp
    # db.execute("UPDATE Pokemon SET hp = ? WHERE id = ?",[new_hp, self.id])
    binding.pry
    # db.execute("UPDATE Pokemon SET hp = ?", [new_hp])
  end
end
