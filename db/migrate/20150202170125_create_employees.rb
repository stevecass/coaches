class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :manager_emp_id
      t.integer :department_id
      t.string :name
      t.date :hired_on
    end
  end
end
