require 'rails_helper'

feature "User signs in with an account", %q{
  As a registered user,
  I want to sign in,
  so that I can access authenticated user features.
} do

# Acceptance Criteria:
# * User must specify username and password.
# * User is prompted with errors for invalid inputs.
# * User is signed in upon correct input.

  let(:user) { FactoryGirl.create(:user) }

  def sign_in_as(user)
    visit login_path
    fill_in "User name", with: user.user_name
    fill_in "Password", with: user.password
    click_button "Login"
  end

  scenario 'with existing account and valid input' do
    sign_in_as(user)
    expect(page).to have_content 'Logout'
  end

end