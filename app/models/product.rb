class Product < ActiveRecord::Base
	attr_accessor :description, :price

	def initialize(description, price)
		@description = description
		@price = price
	end

end
