class Designer < ActiveRecord::Base
	has_many :products
	has_many :pages
end