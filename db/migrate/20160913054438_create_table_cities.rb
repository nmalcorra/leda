class CreateTableCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.text :name
      t.integer :cp
      end
  end
end
