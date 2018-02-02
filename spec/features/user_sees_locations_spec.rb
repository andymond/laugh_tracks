require "spec_helper"

describe "user can visit locations" do
  it "displays list of specials in location" do
    Comedian.create(name: "Joe", age: 23)
    Location.create(city: "Denver", state: "CO")
    Special.create(name: "Live in Denver", comedian_id: 1, location_id: 1)
    Special.create(name: "Live in Denver Again", comedian_id: 1, location_id: 1)

    visit("/locations/1")

    expect(page).to have_content("Live in Denver")
    expect(page).to have_content("Live in Denver Again")
  end

  it "doesn't display specials if there are less than two" do
    Comedian.create(name: "Joe", age: 23)
    Location.create(city: "Denver", state: "CO")
    Special.create(name: "Live in Denver", comedian_id: 1, location_id: 1)

    visit("/locations/1")

    expect(page).to have_content("Not enough specials!")
  end
end
