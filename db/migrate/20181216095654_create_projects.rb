class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :NAME_PROJECT
      t.string :LOCATION_PROJECT
      t.string :TYPE_PROJECT
      t.string :GITHUB_PROJECT
      t.string :TRELLO_PROJECT
      t.datetime :DATEREQ_PROJECT
      t.date :STARTDATE_PROJECT
      t.date :ENDDATE_PROJECT
      t.string :STATE_PROJECT
      t.references :development_order, foreign_key: true
      t.references :project_team, foreign_key: true

      t.timestamps
    end
  end
end
