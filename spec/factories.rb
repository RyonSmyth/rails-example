FactoryGirl.define do 
  
  factory :user do 
  	first_name "John"
  	last_name "Doe"
  	email "example@example.com"
  	password "password"
  	admin false
  end

  factory :admin, class: User do 
  	first_name "Admin"
  	last_name "User"
  	admin true
  end

  factory :product do 
  	name "Bike"
  	description "Mountain Bike"
  	image_url "/images/bike.jpg"
  	color "Black"
  	price "150"
  end

  factory :comment do 
  	body "Test"
  	rating 5
  end
end