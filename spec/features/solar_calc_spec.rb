require 'rails_helper.rb'

feature "Solar Calculator" do 
  scenario "I/O solar infomation" do 
    visit "/calculators"
    fill_in "Total watts (W):", with: '100'
    fill_in "Run Time:", with: '2'
    fill_in "Modifier Efficiency", with: "80"
    fill_in "Sun Hours:", with: 5.5
  end
end
