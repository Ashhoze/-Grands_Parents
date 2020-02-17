class AddUserToGrandParent < ActiveRecord::Migration[6.0]
  def change
    add_reference :grand_parents, :user, foreign_key: true
  end
end
