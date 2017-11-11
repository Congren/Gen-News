require 'test_helper'

class SavedArticleTest < ActiveSupport::TestCase
	should have_many(:users)
	should have_many(:articles)

	should validate_presence_of :users
	should validate_presence_of :articles


  # test "the truth" do
  #   assert true
  # end
end
