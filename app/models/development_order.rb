class DevelopmentOrder < ApplicationRecord
  belongs_to :client

  has_one :project
  #after_create :create_project
end
