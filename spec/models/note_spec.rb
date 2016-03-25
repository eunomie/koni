require 'rails_helper'

RSpec.describe Note, type: :model do
  it { should validate_presence_of :local_date }
  it { should validate_presence_of :body }
  it { should have_one :team }
end
