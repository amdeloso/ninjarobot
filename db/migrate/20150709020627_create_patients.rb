class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :lname
      t.string :fname
      t.string :mi
      t.text :address

      t.timestamps
    end
  end
end
