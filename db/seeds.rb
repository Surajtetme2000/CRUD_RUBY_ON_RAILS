# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

emp = Emp.create(
    first_name: 'Suraj',
    middle_name: 'Hiraji',
    last_name: 'Tetme',
    email: 'tetmesuraj@gmail.com',
    phone: '9888988988'
)



emp1 = Emp.create(
    first_name: 'A',
    middle_name: 'B',
    last_name: 'C',
    email: 'tetmesuraj2000@gmail.com',
    phone: '9888988988'
)


emp2 = Emp.create(
    first_name: 'D',
    middle_name: 'E',
    last_name: 'F',
    email: 'tetmesuraj2002@gmail.com',
    phone: '9888988988'
)
