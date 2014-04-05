module SpecTestHelper
  def signup(user)
    click_link "Sign up"
    within("#new_user") do
      fill_in "user_email", with: user.email
      fill_in "user_username", with: user.username
      fill_in "user_password", with: user.password
      fill_in "user_password_confirmation", with: user.password
    end
    click_button "Sign up"
  end

  def signin(user)
    click_link "Sign in"
      within("#new_user") do
        fill_in "user_email", with: user.email
        fill_in "user_password", with: user.password
      end
    click_button "Sign in"
  end

  def signout(user)
    signin(user)
    click_link "Sign out"
  end

end