class DataHelper
  def go  
     return "hello"
  end

  def generate_beliefs (belief_count)
    beliefs=Array.new { }
    for i in 0..belief_count-1
      beliefs[i] = "b#{i}"
    end
    return beliefs
  end

  def get_belief_frequency_from_users (users)
    beliefs_set = Hash.new
    users.each do |u|
      u.beliefs.each do |b|
        if(beliefs_set[b] == nil)
          beliefs_set[b] = 1
        else
          beliefs_set[b] = beliefs_set[b]+1
        end
      end
    end
    return beliefs_set
  end

  def generate_users (user_count, min_user_beliefs, max_user_beliefs, all_possible_beliefs)
    users = Array.new
    for i in 0...user_count
      users[i] = generate_user(min_user_beliefs, max_user_beliefs, all_possible_beliefs, "u#{i}")
    end
    return users
  end

  def generate_user (min_user_beliefs, max_user_beliefs, all_possible_beliefs, user_name)
    num_beliefs = rand(max_user_beliefs-min_user_beliefs+1) + min_user_beliefs
    user = TempUser.new
    user.name = user_name
    for i in 0...num_beliefs
      random_index = rand(all_possible_beliefs.length)
      b = all_possible_beliefs[random_index]
      user.beliefs[i] = b
    end
    return user
  end

end

class TempUser
  def initialize
    @name=""
    @beliefs=Array.new
  end

  def name=(value)
    @name = value
  end
  def name
    return @name
  end

  def beliefs=(value)
    @beliefs = value
  end
  def beliefs
    return @beliefs
  end
end
