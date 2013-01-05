class CreateRaceUsers < ActiveRecord::Migration
  def change
    create_table :race_users do |t|
      t.references :race
      t.references :user
      t.boolean :approved
      t.timestamps
    end
  end
end
