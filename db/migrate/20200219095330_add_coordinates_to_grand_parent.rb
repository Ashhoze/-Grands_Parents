class AddCoordinatesToGrandParent < ActiveRecord::Migration[6.0]
  def change
    add_column :grand_parents, :latitude, :float
    add_column :grand_parents, :longitude, :float
  end
end
