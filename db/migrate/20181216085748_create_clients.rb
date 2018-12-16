class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :NAME_CLIENT
      t.integer :TELEPHONE_CLIENT
      t.string :WEBSITE_CLIENT
      t.string :EMAIL_CLIENT
      t.string :COUNTRY_CLIENT
      t.string :ADDRESS_CLIENT

      t.timestamps
    end
  end
end
