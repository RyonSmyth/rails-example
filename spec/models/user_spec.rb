require 'rails_helper'
  describe Product do 
  	context "first name, last name, email, and password present" do
  	  before { @user = User.new(first_name: "Ryan", last_name: "Smith", email: "example@example.com", password: "password")}

  	  it "should return first name" do
  	    expect(@user.first_name).to eq "Ryan"
  	  end
  	  it "should return last name" do
  	    expect(@user.last_name).to eq "Smith"
  	  end
  	  it "should return email" do
  	    expect(@user.email).to eq "example@example.com"
  	  end 
  	  it "should return password" do
  	    expect(@user.password).to eq "password"
  	  end
  	end
 end 	  