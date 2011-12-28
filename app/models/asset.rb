class Asset < ActiveRecord::Base
  belongs_to :folder
  
  scope :recent, lambda {|value| order(:created_at).limit(value)}
  
  mount_uploader :file, FileUploader
  
end
