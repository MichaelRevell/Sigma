class Connection < Neo4j::Rails::Model
  property :strength, :type => Fixnum
  property :relationshipType, :type => String
end
