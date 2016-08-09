class UpdateMigrationProducts < ActiveRecord::Migration
  def change
  	 change_table :products do |t|
  	 	 t.string :description
     	 t.float :price
     end
  end
end
