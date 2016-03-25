class Note < ActiveRecord::Base
  validates :local_date, presence: true
  validates :body, presence: true
  belongs_to :organization
  has_one :team
end
