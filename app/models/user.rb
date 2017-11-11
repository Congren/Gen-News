class User < ApplicationRecord
	belongs_to :savedArticle
    has_one :location
    validates_presence_of :first_name
    validates_presence_of :last_name
    validates_presence_of :password
    validates_presence_of :email
    validates_uniqueness_of :email
    validates :password, presence: true, length: { minimum: 4}, on: :create
    validates_format_of :email, with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
    
  	scope :admins,          -> { where(role: 'admin') }
  	scope :alphabetical,    -> { order('last_name, first_name') }
    scope :articles,        -> { joins(:article).where("user_id = ?", :id) }

 	def name
    	"#{first_name}, #{last_name}"
  	end

end
