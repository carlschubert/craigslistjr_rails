require 'rails_helper'

feature 'User management' do
  scenario 'adds new user' do
    visit root_path
    expect {
    click_link 'Signup'
    fill_in 'user_user_name', with: 'Bob'
    fill_in 'user_password', with: '123'
    fill_in 'user_password_confirmation', with: '123'
    click_button 'Signup'
    }.to change(User, :count).by(1)
  end
end
