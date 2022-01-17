class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :league
      t.integer :rank
      t.string :axe

      t.timestamps
    end
  end
end
