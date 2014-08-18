class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.column :description, :string
      t.column :number, :integer
      t.column :custom, :boolean
    end
  end
end
