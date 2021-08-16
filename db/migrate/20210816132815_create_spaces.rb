class CreateSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |t|
      t.string :type
      t.string :name
      t.string :check_in
      t.string :check_out
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
