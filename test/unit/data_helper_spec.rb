require '../../app/helpers/data_helper.rb'

describe DataHelper, '#go' do
 it "returns hello" do
  data = DataHelper.new
  data.go.should eq('hello')
 end
end

describe DataHelper, '#get_beliefs' do
 it "returns 5 beliefs when passed 5" do
  data_helper = DataHelper.new
  data_helper.generate_beliefs(5).length.should eq(5)
 end

 it "returns 6 beliefs when passed 6" do
  data_helper = DataHelper.new
  data_helper.generate_beliefs(5).length.should eq(5)
 end
 it "returns 1 beliefs when passed 1" do
  data_helper = DataHelper.new
  data_helper.generate_beliefs(1).length.should eq(1)
 end
end

data_helper = DataHelper.new

describe DataHelper, '#generate_user' do
  it "returns a user" do
    beliefs = data_helper.generate_beliefs(1)
    my_user = data_helper.generate_user(1,1,beliefs, "testuser")
    my_user.name.should eq('testuser')
  end

  it "returns a user with 1 belief" do
    beliefs = data_helper.generate_beliefs(1)
    my_user = data_helper.generate_user(1,1,beliefs, "testuser")
    my_user.beliefs.length.should eq(1)
  end


  it "returns a user with 2 belief" do

    beliefs = data_helper.generate_beliefs(1)
    my_user = data_helper.generate_user(2,2,beliefs, "testuser")
    my_user.beliefs.length.should eq(2)
  end
end


describe DataHelper, '#generate_users' do
  beliefs = data_helper.generate_beliefs(3)

  it "returns 3 users" do
    users = data_helper.generate_users(5,1,3, beliefs)
    users[0].name.should eq('u0')
    users[1].beliefs.length.should be > 0
  end
end

describe DataHelper, '#get_belief_frequency_from_users' do
  
  it "returns 1 beliefs" do
    user = TempUser.new
    user.name ="testme"
    user.beliefs[0]="b1"
    users = Array.new
    users[0]=user
    belief_set = data_helper.get_belief_frequency_from_users(users)
    belief_set.length.should eq(1)
  end
end
