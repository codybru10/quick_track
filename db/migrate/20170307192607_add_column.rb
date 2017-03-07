class AddColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :paid, :boolean, :default => false
  end
end
