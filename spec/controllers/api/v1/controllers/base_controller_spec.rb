require 'rails_helper'

RSpec.describe Api::V1::BaseController, type: :controller do
  let(:my_user) { create(:user) }

  context "authorized user" do
    before do
      controller.request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Token.encode_credentials(my_user.auth_token) # HTTP header
      controller.authenticate_user
    end

    describe "#authenticate_user" do  # expect authenticate_user finds user by token and sets current_user and authenticates via API
      it "finds a user by their authentication token" do
        expect(assigns(:current_user)).to eq(my_user)
      end
    end
  end
end