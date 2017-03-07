class ChangeTime < ActiveRecord::Migration[5.0]
  def change
    remove_column :services, :time
    add_column :services, :time, :integer
  end
end
