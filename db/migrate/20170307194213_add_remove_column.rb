class AddRemoveColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :services, :paid
    add_column :services, :paid, :boolean, :default => false
  end
end
