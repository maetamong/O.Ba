class Photo < ApplicationRecord
	belongs_to	:user
	has_many	:points
	validates	:banana_photo, presence: {message: "사진을 반드시 업로드하셔야 합니다."}
	mount_uploader	:banana_photo, ImageUploader
end
