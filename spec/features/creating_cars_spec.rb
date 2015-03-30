require 'rails_helper'

feature 'Creating cars' do
  scenario 'can create a car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content("1967 Ford Mustang created")
    expect(page).to have_content('$2,300.00')
    
    click_link 'New Car'

    fill_in 'Make', with: 'Honda'
    fill_in 'Model', with: 'Accord'
    fill_in 'Year', with: '1999'
    fill_in 'Price', with: '19'

    click_button 'Create Car'

    expect(page).to have_content("1999 Honda Accord created")
    expect(page).to have_content('$19.00')
  end
end
