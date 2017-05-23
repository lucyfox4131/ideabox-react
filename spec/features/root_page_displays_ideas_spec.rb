require 'rails_helper'
# , js: true 

RSpec.feature "Sees all ideas"do
  context "successfully visits root page" do
    scenario "all ideas displayed" do
      visit root_path

      expect(page).to have_content("IdeaBox - React")
    end
  end
end
