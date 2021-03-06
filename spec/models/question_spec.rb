require 'spec_helper'

describe Question do
  context "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
  end

  context "associations" do
    it { should have_many(:answers)}
  end
end