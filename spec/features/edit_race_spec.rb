require 'rails_helper'

describe "editing races" do
  let(:race) {Race.create(name: "La Mision")}
  it "allows a user to edit a race title" do
    visit edit_race_path(race)
    fill_in "Name", with: "El Tetra"
    click_on("Update Race")
    visit races_path
    expect(page).to have_content("El Tetra")
  end
end
