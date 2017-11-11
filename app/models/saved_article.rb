class SavedArticle < ApplicationRecord
	has_many :users
	has_many :articles
	validates_presence_of :users
	validates_presence_of :articles
    validates_presence_of :user_id, on: :update
    validates_presence_of :article_id, on: :update


end
