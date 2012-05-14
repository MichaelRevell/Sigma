require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'add_beliefs'" do
    it "returns http success" do
      get 'add_beliefs'
      response.should be_success
    end
  end

end
