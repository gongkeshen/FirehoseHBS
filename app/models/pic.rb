class Pic < ActiveRecord::Base
	# ImageUploader defines how to upload
	# :image says where to put the uploaded file
	mount_uploader :image, ImageUploader	
end
