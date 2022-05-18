class CreateItems < ActiveRecord::Migration[7.0]
  #model Item
  def change
    create_table :items do |t|
      #general infromation about item
      #t.integer  :id is added by convention

      #items stock keeping unit identifier
      t.string      :sku

      #cost of the item
      t.decimal     :cost

      #amount of items in inventory (not included directly in ShopifyInventoryItem but important anyway)
      t.integer     :amount_in_inventory

      #stores deafault harmonized system code
      #t.integer     :home_harmonized_system_code

      #foreign key to a table of origin countries for the item
      t.references  :countries;

      #string containing the province of origin of the item
      t.string      :province_of_origin

      #saves the timestamp of when the object was created and last modified
      t.timestamps
    end
  end
end
