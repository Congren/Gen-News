require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
	should belong_to(:savedArticle)
	should have_one(:article)
	should validate_presence_of(:rating)
	should validate_presence_of(:title)
	should validate_presence_of(:date)
	should validate_presence_of(:source)

	should allow_value("fire").for(:title)
	should allow_value("abc.com").for(:source)
	should_not allow_value("").for(:title)
	should_not allow_value(2).for(:date)
	should_not allow_value("abc").for(:date)

	context "Creating a context for assignments" do
      setup do
        
        
      end

      teardown do
       
      end
		should "have a scope to find article that have dates in the past x days" do
        	assert_equal 1, Article.for_past_days(10).size
      	end

      	should "find rating of an article" do
        	assert_equal 8.3, Article.first.rated
      	end
	end
  # test "the truth" do
  #   assert true
  # end
end
