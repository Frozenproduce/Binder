class FoldersController < ApplicationController
  
  def index
    if params[:access_key]
     redirect_to folder_path(params[:access_key])
    end
  end
  
  def show
    @object = Folder.find_by_access_key(params[:id])
  end
  
end
