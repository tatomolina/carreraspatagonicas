require 'rails_helper'

describe "adding races" do
  it "allows a user to create a race with a title" do
    visit new_race_path
    fill_in "Name", with: "La Mision"
    click_on("Create Race")
    visit races_path
    expect(page).to have_content("La Mision")
  end
end
