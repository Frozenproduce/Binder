class Folder < ActiveRecord::Base
  has_many :assets
  
  before_create :generate_unique_folder_key

  scope :recent, lambda {|value| order(:created_at).limit(value)}

  private

  def generate_unique_folder_key
    self.access_key = lambda { Digest::SHA1.hexdigest("--#{rand(10000)}--#{Time.now}--")[0,8] }.call
  end
end
