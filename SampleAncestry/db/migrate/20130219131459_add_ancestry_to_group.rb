class AddAncestryToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :ancestry, :string
    add_index :groups, :ancestry
  end
end
