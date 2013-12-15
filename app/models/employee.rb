class Employee < ActiveRecord::Base
  validates_uniqueness_of :first_name, :last_name, :email
  has_many :sales
end
