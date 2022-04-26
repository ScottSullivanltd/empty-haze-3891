require "rails_helper"

RSpec.describe Competition, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:location) }
    it { should validate_presence_of(:sport) }
  end

  describe "relationships" do
    it { should have_many(:competition_teams) }
    it { should have_many(:teams).through(:competition_teams) }
    it { should have_many(:players).through(:teams) }
  end
end
