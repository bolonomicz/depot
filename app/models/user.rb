class User < ActiveRecord::Base
	after_destroy :ensure_an_admin_remains

  attr_accessible :name, :password, :password_confirmation

  validates :name, presence: true, uniqueness: true
  has_secure_password

  private
  	def method_name
  		if User.count.zero?
  			raise "Can't delete last user"
  		end
  	end
end
