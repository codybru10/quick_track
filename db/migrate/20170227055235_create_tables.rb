class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string 'name'
      t.string 'address'
      t.string 'contact_name'
      t.string 'contact_email'
      t.string 'contact_number'
      t.integer 'balance'
      t.integer 'rate'
    end

    create_table :services do |t|
      t.string 'name'
      t.date 'date'
      t.time 'time'
      t.string 'description'
      t.integer 'client_id'
      t.integer 'employee_id'
    end

    create_table :employees do |t|
      t.string 'name'
      t.string 'department'
    end
    
  end
end
