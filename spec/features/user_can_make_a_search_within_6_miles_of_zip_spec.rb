require 'rails_helper'

RSpec.feature "user can search for 6 mile radius" do
  scenario "a user can use the search bar" do
    visit root_path
    fill_in "q", with: "80203"

    click_on "Locate"

    expect(current_path).to eq("/search?zip=80203")
    expect(page).to have_content("Electric")
    expect(page).to have_content("Propane")
    expect(page).to have_content("Name")
    expect(page).to have_content("Address")
    expect(page).to have_content("Fuel Types")
    expect(page).to have_content("Distance")
    expect(page).to have_content("Access Times")
  end
end
