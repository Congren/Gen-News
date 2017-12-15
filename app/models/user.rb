class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_one :location
    
  	scope :admins,          -> { where(admin?: 'admin') }
  	scope :alphabetical,    -> { order('last_name, first_name') }

 	def name
    	"#{first_name}, #{last_name}"
  	end

end
