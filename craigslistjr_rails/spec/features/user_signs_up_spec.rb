require 'rails_helper'

feature "User signs up", %q{
  As a non-registered user,
  I want to sign up,
  so that I can access authenticated user features.
} do

# Acceptance Criteria:
# * User must specify username and password.
# * User must confirm password.
# * User is prompted with errors for invalid inputs.
# * User is signed in upon correct input.

  scenario 'with valid input' do
    visit new_user_path
    fill_in "User name", :with: "puppyoverlord"
    fill_in "Password", :with: "puppy4ever"
    fill_in "Password confirmation", :with: "puppy4ever"
    click_button "Signup"

    expect(page).to have_content 'Logout'
  end

end