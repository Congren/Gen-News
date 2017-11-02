require 'test_helper'

class SavedArticleTest < ActiveSupport::TestCase
	should have_many(:users)
	should have_many(:articles)
  # test "the truth" do
  #   assert true
  # end
end
