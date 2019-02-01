# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Specialty.destroy_all

Specialty.create!([
  {
    id: 1,
    specialty_name: 'Oftamologia'
  }
])

User.destroy_all
User.create!([
  {
    id: 1,
    email: 'admin@admin.com',
    password: 'admin@123',
    password_confirmation: 'admin@123'
  }
])

Profile.destroy_all
Profile.create!([
  {
    id: 1,
    user_id: 1,
    profile_type: 'Almight'
  }
])