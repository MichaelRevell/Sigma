require 'spec_helper'

describe "beliefs/show" do
  before(:each) do
    @belief = assign(:belief, stub_model(Belief,
      :title => "",
      :description => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
