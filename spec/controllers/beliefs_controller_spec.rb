require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe BeliefsController do

  # This should return the minimal set of attributes required to create a valid
  # Belief. As you add validations to Belief, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BeliefsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all beliefs as @beliefs" do
      belief = Belief.create! valid_attributes
      get :index, {}, valid_session
      assigns(:beliefs).should eq([belief])
    end
  end

  describe "GET show" do
    it "assigns the requested belief as @belief" do
      belief = Belief.create! valid_attributes
      get :show, {:id => belief.to_param}, valid_session
      assigns(:belief).should eq(belief)
    end
  end

  describe "GET new" do
    it "assigns a new belief as @belief" do
      get :new, {}, valid_session
      assigns(:belief).should be_a_new(Belief)
    end
  end

  describe "GET edit" do
    it "assigns the requested belief as @belief" do
      belief = Belief.create! valid_attributes
      get :edit, {:id => belief.to_param}, valid_session
      assigns(:belief).should eq(belief)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Belief" do
        expect {
          post :create, {:belief => valid_attributes}, valid_session
        }.to change(Belief, :count).by(1)
      end

      it "assigns a newly created belief as @belief" do
        post :create, {:belief => valid_attributes}, valid_session
        assigns(:belief).should be_a(Belief)
        assigns(:belief).should be_persisted
      end

      it "redirects to the created belief" do
        post :create, {:belief => valid_attributes}, valid_session
        response.should redirect_to(Belief.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved belief as @belief" do
        # Trigger the behavior that occurs when invalid params are submitted
        Belief.any_instance.stub(:save).and_return(false)
        post :create, {:belief => {}}, valid_session
        assigns(:belief).should be_a_new(Belief)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Belief.any_instance.stub(:save).and_return(false)
        post :create, {:belief => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested belief" do
        belief = Belief.create! valid_attributes
        # Assuming there are no other beliefs in the database, this
        # specifies that the Belief created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Belief.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => belief.to_param, :belief => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested belief as @belief" do
        belief = Belief.create! valid_attributes
        put :update, {:id => belief.to_param, :belief => valid_attributes}, valid_session
        assigns(:belief).should eq(belief)
      end

      it "redirects to the belief" do
        belief = Belief.create! valid_attributes
        put :update, {:id => belief.to_param, :belief => valid_attributes}, valid_session
        response.should redirect_to(belief)
      end
    end

    describe "with invalid params" do
      it "assigns the belief as @belief" do
        belief = Belief.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Belief.any_instance.stub(:save).and_return(false)
        put :update, {:id => belief.to_param, :belief => {}}, valid_session
        assigns(:belief).should eq(belief)
      end

      it "re-renders the 'edit' template" do
        belief = Belief.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Belief.any_instance.stub(:save).and_return(false)
        put :update, {:id => belief.to_param, :belief => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested belief" do
      belief = Belief.create! valid_attributes
      expect {
        delete :destroy, {:id => belief.to_param}, valid_session
      }.to change(Belief, :count).by(-1)
    end

    it "redirects to the beliefs list" do
      belief = Belief.create! valid_attributes
      delete :destroy, {:id => belief.to_param}, valid_session
      response.should redirect_to(beliefs_url)
    end
  end

end
