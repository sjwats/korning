require 'csv'

datafile = Rails.root + 'db/data/sales.csv'

CSV.foreach(datafile, headers: true) do |row|
  sale = Sale.find_or_create_by(invoice_no: row['invoice_no'])
  sale.update_attributes(
    customer_and_account_no: row['customer_and_account_no'],
    product_name: row['product_name'],
    sale_date: Chronic.parse(row['sale_date']),
    sale_amount: row['sale_amount'].gsub("$","").to_f,
    units_sold: row['units_sold'],
    invoice_no: row['invoice_no'],
    invoice_frequency: row['invoice_frequency']
    )
end


    # employee_info = row['employee'].split(' ')
    # first_name = employee_info[0]
    # last_name = employee_info[1]
    # email = employee_info[2]

    # Employee.find_or_create_by(email: row['email']) do |employee|
    #   employee.first_name = first_name
    #   employee.last_name = last_name
    #   employee.email = email
    # end
