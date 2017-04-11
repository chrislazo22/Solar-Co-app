require 'rails_helper.rb'

describe "Products Page" do 
  it "display links to various products" do 
    visit "/products"
    click_on "Solar Panels"
    expect(page).to have content("Solar Panels")
  end
end
