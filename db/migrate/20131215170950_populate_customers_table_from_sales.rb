class PopulateCustomersTableFromSales < ActiveRecord::Migration
  def up
    Sale.find_each do |sale|
      customer_info = sale.customer_and_account_no.split(" ")
      customer = Customer.find_or_initialize_by(account_number: customer_info[1].gsub!(/[\(\)]/,''))
      customer.website = "#{customer_info[0]}.com"

      customer.invoice_frequency = sale.invoice_frequency
      customer.save
    end
  end

  def down
    Customer.delete_all
  end
end
