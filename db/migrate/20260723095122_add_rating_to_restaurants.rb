class AddRatingToRestaurants < ActiveRecord::Migration[8.1]
  def change
    # add_column :table_name, :column_name, :data_type, default: 0
    add_column :restaurants, :rating, :integer # , default: 0
    # remove_column :restaurants, :rating, :integer # , default: 0
  end
end
