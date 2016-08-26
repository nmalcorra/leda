class AddAtributesToUser < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :surname, :string
  	add_column :users, :address, :string
	add_column :users, :phone, :integer
	add_column :users, :city, :string
  end
end
