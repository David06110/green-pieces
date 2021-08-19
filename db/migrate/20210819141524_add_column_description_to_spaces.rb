class AddColumnDescriptionToSpaces < ActiveRecord::Migration[6.0]
  def change
    add_column :spaces, :description, :string
  end
end
