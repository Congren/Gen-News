class SavedArticle < ApplicationRecord
	has_many :users
	has_many :articles
end
