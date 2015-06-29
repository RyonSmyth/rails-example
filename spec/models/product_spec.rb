require 'rails_helper'
  describe Product do 

    context "name, description, image url, color, and price present" do
      before{ @product = Product.new( name: "bike", description: "fast bike", image_url: "/images/bike.jpg", color: "blue", price: "$150")}

      it "should return name" do
      	expect(@product.name).to eq "bike"
      end
      it "should return description" do
      	expect(@product.description).to eq "fast bike"
      end
      it "should return image url" do
      	expect(@product.image_url).to eq "/images/bike.jpg"
      end
      it "should return color" do
      	expect(@product.color).to eq "blue"
      end
      it "should return price" do
      	expect(@product.price).to eq "$150"
      end
    end
  end                        