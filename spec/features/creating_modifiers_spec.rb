require 'rails_helper.rb'

feature 'Creating Modifiers' do 
  scenario 'can create a modifier' do
    visit '/admin/modifiers'
    click_link 'New Modifier'
    fill_in 'Modifier Type', with: 'PWM or MPPT'
    fill_in 'Amperage', with: '10A'
    click_button 'Add Modifier'
    expect(page).to have_content('Modifier')
  end
end

