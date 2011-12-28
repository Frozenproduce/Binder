class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.references :folder
      t.column :name, :string
      t.column :file, :string
      t.timestamps
    end
  end
end
