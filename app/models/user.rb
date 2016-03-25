# User of the application
class User < ActiveRecord::Base
  include Clearance::User

  validates :name, presence: true
end
