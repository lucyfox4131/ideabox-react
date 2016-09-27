require 'rails_helper'

RSpec.describe Idea, type: :model do

  it 'defaults to quality of 0' do
    idea = Idea.create(title: "Idea Title", body: "Idea Body")

    expect(idea.quality).to eq(0)
  end

end
