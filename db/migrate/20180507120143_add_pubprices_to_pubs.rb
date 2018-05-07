class AddPubpricesToPubs < ActiveRecord::Migration[5.0]
  def change
    add_column :pubs, :pubprices, :string
  end
end
