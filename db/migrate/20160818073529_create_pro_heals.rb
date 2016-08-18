class CreateProHeals < ActiveRecord::Migration
  def change
    create_table :pro_heals do |t|
      t.string :name
      t.string :surname
      t.string :phone
      t.string :location
      t.string :job
      t.string :city
      t.string :postal_code
      t.stringv :avatar
      t.timestamps null: false
    end
  end
end
