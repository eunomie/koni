# A team.
# A team is always related to an organization and contains users.
class Team < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :organization
  has_many :users
end
