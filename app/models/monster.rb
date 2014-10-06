class Monster < ActiveRecord::Base
	validates(:name, presence: true)
	has_attached_file :avatar, 
			:styles => { :medium => "300x300>", :thumb => "100x100>" }, 
			:path => ":rails_root/uploads/:class/:id/:basename.:extension",
			:url => "/avatar/:id/download"
  	validates_attachment_content_type :avatar, :content_type => 
	['image/jpg','image/jpeg','image/pjpeg','image/png','image/x-png']
	has_secure_password
end
