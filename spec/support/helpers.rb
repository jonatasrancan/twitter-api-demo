module Helpers
  def log_in
    visit root_path

    fill_in 'Username', with: 'admin'
    fill_in 'Password', with: 'admin@123456'

    click_button 'Log in'
  end
end

RSpec.configure do |config|
  config.include Helpers
end
