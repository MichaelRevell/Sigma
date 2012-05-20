class User < Neo4j::Rails::Model
  index :name
  
  property :name, :type => String
  validates :name, :uniqueness => true
  
  has_n(:beliefs)

  public

  def self.generate_users (user_count, min_user_beliefs, max_user_beliefs, all_possible_beliefs)
    users = Array.new
    for i in 0...user_count
      users[i] = generate_user(min_user_beliefs, max_user_beliefs, all_possible_beliefs, "u#{i}")
    end
  end

  def self.generate_user (min_user_beliefs, max_user_beliefs, all_possible_beliefs, user_name)
    num_beliefs = rand(max_user_beliefs-min_user_beliefs) - min_user_beliefs
    user = User.new
    user.name = user_name
    user.beliefs = Array.new
    for i in 0...num_beliefs
      random_index = rand(max)
      b = Belief.find(random_index)
      user.beliefs << b
    end
    return user
  end


end
