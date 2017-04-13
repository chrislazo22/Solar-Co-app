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
    expect(page).to have_content("Efficiency")
  end
end
