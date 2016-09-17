class AddKeyTableCities < ActiveRecord::Migration
  def change
  	 add_column :cities, :province_id, :integer
  end
end
