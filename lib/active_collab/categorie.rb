class ActiveCollab::Categorie
  attr_accessor :id, :name

  def self.from_hash(hash)
    categorie = ActiveCollab::Categorie.new
    categorie.id = hash["id"].to_i
    categorie.name = hash["name"]
    categorie
  end

end