FactoryGirl.define do
	factory :user do
		sequence :email do |n|
    		"person#{n}@example.com"
  		end
		password "fakepw123"
		password_confirmation "fakepw123"
	end

	factory :place do
		sequence :name do |n|
    		"place#{n}"
  		end
		address "123 Main st"
		description "This is a great place"
	end

	factory :comment do
		message "This is my comment"
		rating "1_star"
		association :user
		association :place
	end
end