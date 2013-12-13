class Employee < ActiveRecord::Base
  validates_uniqueness_of :first_name, :last_name, :email
end
