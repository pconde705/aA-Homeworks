require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #new" do
      it "renders the new template" do
        get :new
        expect(response).to render_template("new")
      end
    end

    describe "POST #create" do
      context "with invalid params" do
        post :create, params: {email: 'florida@gmail.com'}
        it "validates the presence of the user's email and password"
          expect(response).to render_template(:new)
        it "validates that the password is at least 6 characters long"
          expect(flash[:errors]).to be_present
      end

      context "with valid params" do
        it "redirects user to bands index on success"
          post :create, params: {email: 'jackson@gmail.com', password: '1234567'}
          expect(response).to redirect_to(bands_url)
      end
    end

end
