class CreateGrandParents < ActiveRecord::Migration[6.0]
  def change
    create_table :grand_parents do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.text :description
      t.string :hobby
      t.string :city
      t.integer :price

      t.timestamps
    end
  end
end
