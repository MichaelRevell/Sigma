class Belief < Neo4j::Rails::Model
  index :title
  property :title, :type => String
  validates :title, :uniqueness => true
  property :description, :type => String
  
  has_n(:users)

end
