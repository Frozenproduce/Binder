class CreateFolders < ActiveRecord::Migration
  def change
    create_table :folders do |t|
      t.column :name, :string
      t.column :access_key, :string
      t.timestamps
    end
  end
end
