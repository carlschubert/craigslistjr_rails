module AuthenticationHelper
  def sign_in_as(user)
    visit login_path
    fill_in "User name", with: user.user_name
    fill_in "Password", with: user.password
    click_button "Login"
  end
end