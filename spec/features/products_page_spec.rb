require 'rails_helper.rb'

describe "Products Page" do 
  it "display links to various products" do 
    visit "/products"
    expect(page).to have_content("Solar Panels")
  end

  it "displays link to modifiers" do
    visit "/products"
    expect(page).to have_content("Modifiers")
    click_on("Modifiers")
    visit "/modifiers"
  end

  it "displays link to batteries" do
    visit "/products"
    expect(page).to have_content("Batteries")
    click_on("Batteries")
    visit "/batteries"
  end
end
