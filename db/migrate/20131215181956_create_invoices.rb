class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :account_no
      t.integer :invoice_no

      t.timestamps
    end
  end
end
