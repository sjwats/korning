class ChangePopulateCustomersTableFromSales < ActiveRecord::Migration
  def up
    add_column :customers, :invoice_frequency, :string
    add_column :customers, :account_number, :string
  end

  def down
    remove_column :customers, :account_number
    remove_column :customers, :invoice_frequency, :string
  end
end
