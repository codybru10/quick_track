class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.integer :client_id
      t.integer :balance
      t.date :date
    end
  end
end
