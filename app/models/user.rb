class User < ApplicationRecord
	belongs_to :savedArticle
    has_one :location
    validates_presence_of :email
    validates_uniqueness_of :email
    validates :password_digest, presence: true, length: { minimum: 4}, on: :create
    validates_format_of :email, with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
    
end
