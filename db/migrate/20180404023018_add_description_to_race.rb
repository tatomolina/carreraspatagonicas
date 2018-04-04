class AddDescriptionToRace < ActiveRecord::Migration[5.1]
  def change
    add_column :races, :description, :text
  end
end
