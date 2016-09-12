require 'rails_helper'

RSpec.feature "user can search for 6 mile radius" do
  scenario "a user can use the search bar" do
    visit root_path
    fill_in "Search by zip...", with: "80203"

    click_on "Locate"
    save_and_open_page
  end
end
