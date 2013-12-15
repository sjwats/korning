class ChangeSalesEmployeeNameToId < ActiveRecord::Migration
  def up
    add_column :sales, :employee_id, :integer

    Sale.find_each do |sale|
      employee_info = sale.employee.split(" ")
      employee = Employee.find_or_initialize_by(email: employee_info[2])
      employee.last_name = employee_info[1]
      employee.first_name = employee_info[0]
      employee.save

      sale.employee_id = employee.id
      sale.save
    end


    #remove_column :sales, :employee
  end

  def down

    Employee.delete_all
    #add_column :sales, :employee, :string

    remove_column :sales, :employee_id
  end
end
