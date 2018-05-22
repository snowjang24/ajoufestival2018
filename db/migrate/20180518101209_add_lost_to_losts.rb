class AddLostToLosts < ActiveRecord::Migration[5.0]
  def change
    add_column :losts, :lost, :string
  end
end
