feature 'Viewing Homepage' do
  scenario 'A user can see a log in page' do
    visit '/'
    click_link 'Sign in'
    
    expect(page).to have_content 'Username'
    expect(page).to have_field 'username'
    expect(page).to have_content 'Password'
    expect(page).to have_field 'password'
    expect(page).to have_button 'Submit'
  end

  scenario 'A user can fill in their username and password to log in and redirect back to homepage' do
    sign_in_user

    expect(page).not_to have_content('Sign in')
    expect(page).not_to have_content('Sign up')
    expect(page).to have_content('Sign out')
    expect(page).to have_content('Old Greg')
    expect(page).to have_content('Makers Air B\'n\'G')
    expect(page).to have_link 'Requests', href: '/requests'
  end
end
