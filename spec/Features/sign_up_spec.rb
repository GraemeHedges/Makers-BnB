feature "user has option to sign up" do
  scenario "user can register for an account" do
    visit('/sign-up')
    expect(page).to have_content('Name')
    expect(page).to have_content('Email')
    expect(page).to have_content('Password')
    expect(page).to have_content('Confirm Password')
    expect(page).to have_content('Home')
    expect(page).to have_content('Sign In')
  end
end
