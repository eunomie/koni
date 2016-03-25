require 'rails_helper'

RSpec.describe Mood, type: :model do
  it { should validate_presence_of :local_date }
  it { should validate_presence_of :feeling }
  it { should have_one :team }
end
