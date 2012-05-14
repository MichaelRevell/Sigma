class User < Neo4j::Rails::Model
  property :name, :type => String
  
  has_n(:beleifs)

end
