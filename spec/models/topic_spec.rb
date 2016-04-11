require 'rails_helper'

RSpec.describe Topic, type: :model do
  let(:topic) { create(:topic) }

  it { is_expected.to have_many(:posts) }
  it { is_expected.to have_many(:labelings) }
  it { is_expected.to have_many(:labels).through(:labelings) }
  
  describe "attributes" do
    it "responds to name and description attributes" do
      expect(topic).to have_attributes(name: topic.name, description: topic.description)
    end

    it "responds to public by default" do
      expect(topic).to have_attributes(public: true)
    end

  end
end
