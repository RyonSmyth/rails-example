require 'rails_helper'
  describe Comment do

  	context "comment and rating present" do
  	  before { @comment = Comment.new( body: "test", rating: 5)}

  	  it "should return body" do
  	    expect(@comment.body).to eq "test"
  	  end
  	  it "should return rating" do
  	    expect(@comment.rating).to eq 5
  	  end
  	end
  end
