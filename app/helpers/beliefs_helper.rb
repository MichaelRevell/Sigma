module BeliefsHelper
   def self.generate_beliefs (belief_count)
    beliefs=Array.new { }
    for i in 0..belief_count-1
      beliefs[i] = "b#{i}"
    end
    return beliefs
  end
end
