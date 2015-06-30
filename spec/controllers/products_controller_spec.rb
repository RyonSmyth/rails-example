require "rails_helper"

describe ProductsController, :type => :controller do 
  describe "GET #index" do
  	it "responds successfully an an HTTP status code" do
  	  get :index
  	  expect(response).to be_success
  	  expect(response).to have_http_status(200)
  	end

  	it "renders the index template" do 
  	  get :index
  	  expect(response).to render_template("index")
  	end
  end
end