class Addcolumn < ActiveRecord::Migration
  def change
  	add_column :users,:nickname,:string
  	remove_column :tweets,:name,:string
  end
end
