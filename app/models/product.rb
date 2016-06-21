class Product < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	validates_presence_of :name, :price, :stock_quantity
	validates_numericality_of :price, :stock_quantity

	belongs_to :designer
	belongs_to :category
	belongs_to :page
end
