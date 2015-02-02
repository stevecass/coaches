Employee.create!([
  {id: 1, manager_emp_id: 1, department_id: 1, name: "steven", hired_on: "2014-04-04"}
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
