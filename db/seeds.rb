Employee.create!([
  {id: 1, manager_emp_id: 2, department_id: 1, name: "steven", hired_on: "2014-04-04"},
  {id: 2, manager_emp_id: 0, department_id: 1, name: "Christine Forster", hired_on: "1989-11-04"}
])
Publication.create!([
  {id: 1, title: "Vogue", frequency: "monthly", imprint: "Conde Nast"}
])
Subscription.create!([
  {id: 1, user_id: 1, publication_id: 1, start_date: nil, end_date: nil, payment_status: nil},
  {id: 2, user_id: 1, publication_id: 1, start_date: "2015-01-01", end_date: "2015-12-31", payment_status: "paid"}
])
User.create!([
  {id: 1, email: "steven@cassidy.co.uk", password_digest: "$2a$10$RECcc0l0foHz9XXBaDW/me9UoOWsYbTAedfZRGqF7grwZi.1qlk9e", name: "Steven Cassidy", dob: "1967-03-04"}
])
#in a real app you may prefer to be more selective here...
tables = ActiveRecord::Base.connection.tables.reject{|t| t=="schema_migrations"}
tables.each do |table|
   sql = "SELECT setval('#{table}_id_seq', (SELECT MAX(id) FROM #{table}))"
   puts "Executing #{sql}"
   ActiveRecord::Base.connection.execute(sql)
end
