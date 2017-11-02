class Article < ApplicationRecord
	belongs_to :savedArticle
	has_one :rating


end
