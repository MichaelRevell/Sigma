require '../../app/models/User'
describe User, '#generate_user' do
  it "returns a user" do
    data_helper = DataHelper.new
    beliefs = data_helper.generate_beliefs(1)
    my_user = data_helper.generate_user(1,1,beliefs, "testuser")
    my_user.username.should eq('testuser')
  end
end