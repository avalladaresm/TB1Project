class Project < ApplicationRecord
  attr_accessible :development_order_id, :project_team_id
  
  belongs_to :development_order
  belongs_to :project_team
end
