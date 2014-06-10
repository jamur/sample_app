require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do

		it "should have the content 'Sample App'" do
			visit root_path
			expect(page).to have_content('Sample App')
		end

		it "should have the base title" do
			visit root_path
			expect(page).to have_title("Ruby on Rails Tutorial Sample App")
		end

		it "should not have a custom page title" do
			visit root_path
			expect(page).not_to have_title("| Home")
		end
	end

	describe "Help page" do

		it "should have the content 'Help'" do
			visit help_path
			expect(page).to have_content('Help')
		end

		it "should have the title 'Help'" do
			visit help_path
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
		end
	end

	describe "About page" do

		it "should have the content 'About Us'" do
			visit about_path
			expect(page).to have_content('About Us')
		end

		it "should have the title 'About us'" do
			visit about_path
			expect(page).to have_title('Ruby on Rails Tutorial Sample App | About Us')
		end
	end

  	describe "GET /static_pages/home" do

    	it "works! (now write some real specs)" do
      		# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      		get root_path
      		response.status.should be(200)
    	end
	end

	describe "Contact page" do

		it "should have the content 'Contact'" do
			visit contact_path
			expect(page).to have_content('Contact')
		end

		it "should have the title 'Contact'" do
			visit contact_path 
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
		end
	end
end
