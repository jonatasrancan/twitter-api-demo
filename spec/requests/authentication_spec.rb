require 'rails_helper'

feature 'Authentication' do
  before do
    FactoryGirl.create(:user)
  end

  scenario 'Log In' do
    visit root_path

    fill_in 'Username', with: 'admin'
    fill_in 'Password', with: 'admin@123456'

    click_button 'Log in'

    expect(page).to have_content 'Signed in successfully.'
  end

  scenario 'Log Out' do
    log_in

    click_link 'Sign out'

    expect(page).to have_content 'Signed out successfully.'
  end

  scenario 'Sign up' do
    visit root_path

    click_link 'Sign up'

    fill_in 'Username', with: 'jondoe'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'

    click_button 'Sign up'

    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
end
