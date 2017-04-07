require 'rails_helper.rb'

feature 'Creating Batteries' do 
  scenario 'can create battery' do 
    visit '/admin/batts'
    click_link 'New Battery'
    fill_in 'Battery Type', with: 'Gel'
    fill_in 'Battery Voltage', with: '12V'
    # fill_in 'Image', with: 'gel_12V.jpg'
    click_button 'Add Battery'
    expect(page).to have_content('Battery')
  end
end
