class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :invoice_id
      t.string :website

      t.timestamps
    end
  end
end
