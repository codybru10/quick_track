class AddAdminColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :admin, :boolean, :default => false 
  end
end
