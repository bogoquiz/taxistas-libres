class AddRelationshipToCabdriver < ActiveRecord::Migration
  def change
    add_column :cabdrivers, :occupied, :boolean
  end
end
