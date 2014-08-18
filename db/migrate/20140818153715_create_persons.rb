class CreatePersons < ActiveRecord::Migration
  def change
    create_table :persons do |t|
      t.column :name, :string
      t.timestamps
    end
  end
end
