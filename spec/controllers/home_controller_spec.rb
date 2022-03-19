require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  context "user is logged in" do
    login_user

    describe "GET #index" do
      it "returns a success response" do
        get :index
        expect(response).to be_successful
      end
    end

    describe "GET #authorized_example" do
      it "returns a success response" do
        get :authorized_example
        expect(response).to be_successful
      end
    end
  end

  context "user is vistor" do
    describe "GET #index" do
      it "returns a success response" do
        get :index
        expect(response).to be_successful
      end
    end

    describe "GET #authorized_example" do
      it "redirects to signin" do
        get :authorized_example
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

end
