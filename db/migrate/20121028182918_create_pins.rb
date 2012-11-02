class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :category
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.date :date
      t.time :time
      t.text :desc

      t.timestamps
    end
  end
end
