class Poro < ActiveRecord::Base
  validates :name, presence: true
  validates :owner, presence: true
  validates :description, presence: true
  
  mount_uploader :poro_photo, PoroPhotoUploader
end
