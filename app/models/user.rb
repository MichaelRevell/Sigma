class User < Neo4j::Rails::Model
  index :name
  property :name, :type => String

  
  has_n(:beliefs)


end
