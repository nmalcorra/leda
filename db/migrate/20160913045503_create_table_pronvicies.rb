class CreateTablePronvicies < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.text :name
      end
  end
end
