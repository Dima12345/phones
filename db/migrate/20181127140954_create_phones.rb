class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.string :user
      t.integer :number, null: false, limit: 8

      t.timestamps
    end
    add_index :phones, %i( number ), unique: true, using: :btree
  end
end
