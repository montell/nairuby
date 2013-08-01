require 'spec_helper'

describe DiscussionsController do
  include Devise::TestHelpers

  before (:each) do
    @user = FactoryGirl.create(:user)
    sign_in :user, @user
    Discussion.delete_all
  end

  describe "GET index" do
    it "assigns all discussions as @discussions" do
      discussion = Discussion.create! valid_attributes
      get :index, {}, valid_session
      assigns(:discussions).should eq([discussion])
    end
  end

  describe "GET show" do
    it "assigns the requested discussion as @discussion" do
      @discussion = FactoryGirl.create(:discussion, :user_id => @user.id)
      get :show, :id => @discussion.id
      assigns(:discussion).should eq(@discussion)
    end
  end

  describe "GET new" do
    it "assigns a new discussion as @discussion" do
      get :new, {}, valid_session
      assigns(:discussion).should be_a_new(Discussion)
    end
  end

  describe "GET edit" do
    it "assigns the requested discussion as @discussion" do
      discussion = Discussion.create! valid_attributes
      get :edit, {:id => discussion.to_param}, valid_session
      assigns(:discussion).should eq(discussion)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Discussion" do
        post :create, :discussion => { :title => "hello", :post => "Here is the post", :user_id => @user.id}
        Discussion.count.should eql 1
      end

      it "assigns a newly created discussion as @discussion" do
        post :create, {:discussion => valid_attributes}, valid_session
        assigns(:discussion).should be_a(Discussion)
        assigns(:discussion).should be_persisted
      end

      it "redirects to the created discussion" do
        post :create, {:discussion => valid_attributes}, valid_session
        response.should redirect_to(Discussion.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved discussion as @discussion" do
        # Trigger the behavior that occurs when invalid params are submitted
        Discussion.any_instance.stub(:save).and_return(false)
        post :create, {:discussion => { "title" => "invalid value" }}, valid_session
        assigns(:discussion).should be_a_new(Discussion)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Discussion.any_instance.stub(:save).and_return(false)
        post :create, {:discussion => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested discussion" do
        discussion = Discussion.create! valid_attributes
        # Assuming there are no other discussions in the database, this
        # specifies that the Discussion created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Discussion.any_instance.should_receive(:update_attributes).with({ "title" => "MyString" })
        put :update, {:id => discussion.to_param, :discussion => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested discussion as @discussion" do
        discussion = Discussion.create! valid_attributes
        put :update, {:id => discussion.to_param, :discussion => valid_attributes}, valid_session
        assigns(:discussion).should eq(discussion)
      end

      it "redirects to the discussion" do
        discussion = Discussion.create! valid_attributes
        put :update, {:id => discussion.to_param, :discussion => valid_attributes}, valid_session
        response.should redirect_to(discussion)
      end
    end

    describe "with invalid params" do
      it "assigns the discussion as @discussion" do
        discussion = Discussion.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Discussion.any_instance.stub(:save).and_return(false)
        put :update, {:id => discussion.to_param, :discussion => { "title" => "invalid value" }}, valid_session
        assigns(:discussion).should eq(discussion)
      end

      it "re-renders the 'edit' template" do
        discussion = Discussion.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Discussion.any_instance.stub(:save).and_return(false)
        put :update, {:id => discussion.to_param, :discussion => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested discussion" do
      discussion = Discussion.create! valid_attributes
      expect {
        delete :destroy, {:id => discussion.to_param}, valid_session
      }.to change(Discussion, :count).by(-1)
    end

    it "redirects to the discussions list" do
      discussion = Discussion.create! valid_attributes
      delete :destroy, {:id => discussion.to_param}, valid_session
      response.should redirect_to(discussions_url)
    end
  end

end
