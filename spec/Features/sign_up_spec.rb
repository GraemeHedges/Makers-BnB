require_relative '../../app/models/user.rb'

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

  scenario "fill in form and submit redirects to homepage" do
    sign_up_user
    expect(page).to have_link "Sign in", href: "/sign-in"
  end

  scenario "fill in form and submit adds user to database" do
    sign_up_user
    user = User.find_by(email: 'oldgregg@greggs.co.ugreggs')
    expect(user.name).to eq('Old Greg')
  end
end
