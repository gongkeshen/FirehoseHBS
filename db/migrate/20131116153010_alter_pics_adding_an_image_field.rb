class AlterPicsAddingAnImageField < ActiveRecord::Migration
  def change

  	# Adds a new column called "image" of the 
  	# type "string" to the table for "pics"
  	add_column :pics, :image, :string
  end
end
