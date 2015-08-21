class CreateCabdrivers < ActiveRecord::Migration
  def change
    create_table :cabdrivers do |t|
      t.string :name
      t.string :cell

      t.timestamps
    end
  end
end
