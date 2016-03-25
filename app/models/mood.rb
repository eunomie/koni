class Mood < ActiveRecord::Base
  validates :local_date, presence: true
  validates :feeling, presence: true
  belongs_to :organization
  has_one :team

  enum feeling: {
                 good: 'good',
                 ordinary: 'ordinary',
                 bad: 'bad'
                }
end
