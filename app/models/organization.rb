# Organization as a regroupment of users in teams.
# An organization is most of the time a company or big project.
class Organization < ActiveRecord::Base
  validates :name, presence: true
  has_many :teams
  has_many :notes
  has_many :users
  has_many :moods
end
