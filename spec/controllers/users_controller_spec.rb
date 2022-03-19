require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  context "user is logged in" do
    login_user

    describe "GET #index" do
      it "returns a success response" do
        get :index
        expect(response).to be_successful
      end
    end

    describe "GET #show" do
      it "should be successful" do
        get :show, params: {id: @user.id}
        expect(response).to be_successful
      end

      it "should find the right user" do
        get :show, params: {id: @user.id}
        expect(assigns(:user)).to eq(@user)
      end
    end
  end

  context "user is vistor" do
    describe "GET #index" do
      it "returns a success response" do
        get :index
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    describe "GET #show" do
      it "redirects to signin" do
        get :show, params: {id: "1234"}
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

end
