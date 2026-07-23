require 'sqlite3'
DB = SQLite3::Database.new('patients_doctors.sqlite')

class Doctor < ActiveRecord::Base
  # creates attr_accessor for every column in our DB
  # gives some CRUD methods to access the DB
end

# p Doctor.all
# p Doctor.find(1)
# doctor = Doctor.new

# @doctor_repository.all -> Doctor.all
# an array of doctor instances
