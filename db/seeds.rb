# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Aeroplane.create([
  {
    name: 'Airbus A380',
    config: {
      first_class: {
        seats_in_row: 3,
        no_of_rows: 10
      },
      business_class: {
        seats_in_row: 6,
        no_of_rows: 20
      },
      economy_class: {
        seats_in_row: 10,
        no_of_rows: 50
      }
    }
  },
  {
    name: 'Boeing 747',
    config: {
      first_class: {
        seats_in_row: 4,
        no_of_rows: 8
      },
      business_class: {
        seats_in_row: 10,
        no_of_rows: 30
      },
      economy_class: {
        seats_in_row: 15,
        no_of_rows: 50
      }
    }
  }
])

User.create(email: 'admin@admin.com', password_digest: 'admin')
Flight.create(aeroplane: Aeroplane.first, origin: 'Cairo', destination: 'Dubai')
Ticket.create(user: User.first, flight: Flight.first, class_type: :first_class)
Ticket.create(user: User.first, flight: Flight.first, class_type: :business_class)
Ticket.create(user: User.first, flight: Flight.first, class_type: :economy_class)
