class CreateProjectTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :project_teams do |t|
      t.string :NAME_PROJECTTEAM

      t.timestamps
    end
  end
end
