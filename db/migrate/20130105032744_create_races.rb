class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name
      t.string :races
      t.string :city
      t.string :state
      t.date   :date
      t.timestamps
    end
  end
end
