# add the restaurants table into our DB
# normally we'd have to write SQL
# But we're going to write ruby code and ahve active record do it

# class name matches the filename (without the timestamp)
# inherit from ActiveRecord to use the AR methods
class CreateRestaurants < ActiveRecord::Migration[8.1]
  # def change is always in here
  def change
    # tell active record which table to create
    # AND which column i want in that table
    create_table :restaurants do |t|
      # t stands for... table
      # add the attributes for this table
      # t.data_type :attribute_name, default: value
      t.string :name
      t.string :address

      # AR gives us the created_at and updated_at attributes
      t.timestamps
    end
  end
end
