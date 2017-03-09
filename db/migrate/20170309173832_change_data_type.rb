class ChangeDataType < ActiveRecord::Migration[5.0]
  def change
    remove_column :clients, :contact_number
    add_column :clients, :contact_number, :string
  end
end
