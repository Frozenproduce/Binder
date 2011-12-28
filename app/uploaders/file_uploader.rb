# encoding: utf-8

class FileUploader < CarrierWave::Uploader::Base
  
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  
  def file_extension
    url.split('/').last.split('.').last
  end

end
