# encoding: utf-8

class PoroPhotoUploader < CarrierWave::Uploader::Base
  if Rails.env.test?
     storage :file
  else
     storage :fog
  end
end
