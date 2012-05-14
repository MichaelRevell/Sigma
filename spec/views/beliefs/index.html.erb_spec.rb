require 'spec_helper'

describe "beliefs/index" do
  before(:each) do
    assign(:beliefs, [
      stub_model(Belief,
        :title => "",
        :description => ""
      ),
      stub_model(Belief,
        :title => "",
        :description => ""
      )
    ])
  end

  it "renders a list of beliefs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
