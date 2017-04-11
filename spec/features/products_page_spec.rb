require 'rails_helper.rb'

describe "Products Page" do 
  it "display links to various products" do 
    visit "/products"
    expect(page).to have_content("Solar Panels")
  end
end
