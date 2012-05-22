class Connection < Neo4j::Rails::Model
  property :strength, :type => Fixnum
  property :RelationshipType, :type => String
end
