class AddPubpricesToPubs < ActiveRecord::Migration[5.0]
  def change
    add_column :pubs, :pubprice, :string
    add_column :pubs, :pubpost, :string
  end
end
