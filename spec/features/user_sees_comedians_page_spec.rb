require 'spec_helper'

describe "User sees comedians index" do
  it "displays all comedian information to user" do
    visit "/comedians"

    expect(page).to have_content("Name")
    expect(page).to have_content("Age")
  end
end
