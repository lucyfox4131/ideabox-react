require 'rails_helper'

RSpec.feature "Sees all ideas", js: true do
  context "successfully visits root page" do
    scenario "all ideas displayed" do
      visit root_path

      expect(page).to have_content("IdeaBox - React")
    end
  end
end
