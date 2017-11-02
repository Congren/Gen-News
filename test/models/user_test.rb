require 'test_helper'

class UserTest < ActiveSupport::TestCase
	should belong_to(:savedArticle)
	should have_one(:location)
	should validate_presence_of(:email)
	should validate_presence_of(:password)


  # test "the truth" do
  #   assert true
  # end
end
