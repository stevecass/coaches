class Employee < ActiveRecord::Base
  belongs_to :manager, class_name: 'Employee', foreign_key: :manager_emp_id
  has_many :subordinates, class_name: 'Employee', foreign_key: :manager_emp_id
end
