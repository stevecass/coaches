class Employee < ActiveRecord::Base
  belongs_to :manager, class_name: 'Employee'
end