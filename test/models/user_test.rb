require 'test_helper'

class UserTest < ActiveSupport::TestCase
	should belong_to(:savedArticle)
	should have_one(:location)
	should validate_presence_of(:email)
	should validate_presence_of(:password)
	should validate_presence_of(:first_name)
	should validate_presence_of(:last_name)

  	context "Creating a context for employees" do
    # create the objects I want with factories
    setup do 
      create_employees
      
    end
    
    # and provide a teardown method as well
    teardown do
      remove_employees
    end

		should "shows that there is one admin: Alex" do
	      assert_equal 1, User.admins.size
	      assert_equal ["Wang"], User.admins.map{|u| u.last_name}.sort
	    end

		should "shows name as first and last name" do
	      assert_equal "Andrew Wang", @andrew.name
	    end 

	    should "shows users in alphabetical order" do
	      assert_equal ["Andrew", "Darryl", "Nat"], User.alphabetical.map{|u| u.first_name}.sort
	    end 

	    should "shows articles for a particular user" do
	      assert_equal ["airplane", "fire", "zoo"], @andrew.articles.map{|a| a.title}.sort
	    end 
	end
  # test "the truth" do
  #   assert true
  # end
end
