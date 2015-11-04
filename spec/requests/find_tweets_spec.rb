require 'rails_helper'

feature 'Find tweets' do
  before do
    FactoryGirl.create(:user)
  end

  scenario 'Search tweets from a given handle' do
    log_in

    fill_in 'handle', with: 'jondoe'
    click_button 'Find'

    expect(page).to have_content 'Who am i?'
    expect(page).to have_content 'Tweets from @jondoe'
  end
end
