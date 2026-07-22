require 'sqlite3'
DB = SQLite3::Database.new('patients_doctors.sqlite')

class Doctor
  attr_accessor :id, :first_name, :last_name, :age, :specialty

  def initialize(attributes = {})
    @id = attributes[:id] || attributes['id']
    @first_name = attributes[:first_name] || attributes['first_name']
    @last_name  = attributes[:last_name] || attributes['last_name']
    @age = attributes[:age] || attributes['age']
    @specialty = attributes[:specialty] || attributes['specialty']
  end

  def self.all
    DB.results_as_hash = true
    results = DB.execute('SELECT * FROM doctors;')
    results.map do |doctor_hash|
      Doctor.new(doctor_hash)
    end
  end

  def self.find(id)
    DB.results_as_hash = true
    result = DB.execute('SELECT * FROM doctors WHERE ID = ?', id).first
    Doctor.new(result) if result
  end

  def self.count
    DB.execute('SELECT COUNT(*) FROM doctors').first.first
  end

  def save
    @id ? update : insert
  end

  def destroy
    DB.execute('DELETE FROM posts WHERE id = ?', @id)
  end

  private

  def update
    DB.execute('UPDATE posts SET title = ?, url = ?, votes = ? WHERE id = ?', @title, @url, @votes, @id)
  end

  def insert
    DB.execute('INSERT INTO posts (title, url, votes) VALUES (?, ?, ?)', @title, @url, @votes)
    @id = DB.last_insert_row_id
  end
end
# p Doctor.all

# @doctor_repository.all -> Doctor.all
# an array of doctor instances
