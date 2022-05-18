class CreateCountry < ActiveRecord::Migration[7.0]
  #model Item
  def change
    create_table :countries do |t|
      t.string :country_name
      t.string :country_code

      t.timestamps
    end
  end
end
