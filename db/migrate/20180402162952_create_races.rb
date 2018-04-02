class CreateRaces < ActiveRecord::Migration[5.1]
  def change
    create_table :races do |t|
      t.string :name
      t.date :due_date

      t.timestamps
    end
  end
end
