class Restaurant < ActiveRecord::Base
  # no initialize -> looking at our table and giving us those attrs
  # associations -> has_many / belongs_to
  # validations -> making sure the data is right before saving
end
