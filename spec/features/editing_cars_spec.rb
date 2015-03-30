require 'rails_helper'

feature 'Editing cars' do
  scenario 'can edit a car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustangk'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content("1967 Ford Mustangk created")
    expect(page).to have_content('$2,300.00')

    click_link 'Edit'
    
    fill_in 'Model', with: 'Mustang'
    fill_in 'Price', with: '2250'
    
    click_button 'Update Car'
    
    expect(page).to have_content("1967 Ford Mustang edited")
    expect(page).to have_content('$2,250.00')
  end
end
