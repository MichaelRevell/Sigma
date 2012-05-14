class Belief < Neo4j::Rails::Model
  index :title
  property :title, :type => String
  property :description, :type => String
  
  has_n(:users)

end
