class Page < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	has_many :products
	belongs_to :category
	belongs_to :designer
end
