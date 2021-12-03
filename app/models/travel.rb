class Travel < ApplicationRecord

belongs_to :user

mount_uploader :image, ImageUploader

end
