require 'rails_helper'

RSpec.describe Idea, type: :model do

  context "validations" do
    it { should validate_presence_of(:title)}
  end

  context "default quality" do
    it 'defaults to quality of Swill' do
      idea = Idea.create(title: "Idea Title", body: "Idea Body")
      expect(idea.quality).to eq("Swill")
    end
  end
end
