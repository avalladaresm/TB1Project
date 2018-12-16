class CreateDevelopmentOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :development_orders do |t|
      t.string :PROJECTNAME_DEVORDER
      t.string :TECHS_DEVORDER
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
