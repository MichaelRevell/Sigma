class Belief < Neo4j::Rails::Model
  index :title
  property :title, :type => String
  validates :title, :uniqueness => true
  property :description, :type => String
  
  has_n(:users)
  #has_n(:related_beliefs).to(Belief).relationship(Connection)
  #has_n(:rel_beliefs).from(Belief, :related_beliefs)
  
  has_n(:beliefs)

end
