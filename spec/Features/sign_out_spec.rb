feature 'Viewing Homepage' do

  scenario 'A user can fill in their username and password to log in and redirect back to homepage' do
    visit '/'
    click_link 'Sign in'

    fill_in 'username', with: 'Old Greg'
    fill_in 'password', with: 'Password1!'
    click_on 'Submit'

    click_link 'Sign out'

    expect(page).to have_content('Sign in')
    expect(page).to have_content('Sign up')
    expect(page).not_to have_content('Sign out')
    expect(page).not_to have_content('Old Greg')
    expect(page).to have_content('Makers Air B\'n\'G')

  end
end
