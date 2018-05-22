class CreateLosts < ActiveRecord::Migration[5.0]
  def change
    create_table :losts do |t|
      t.string :item
      t.text :place
      t.string :number

      t.timestamps
    end
  end
end
