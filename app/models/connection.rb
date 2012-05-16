class Connection < Neo4j::Rails::Model
  property :strength, :type => Fixnum

end
