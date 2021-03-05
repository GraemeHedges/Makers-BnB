feature 'Viewing Homepage' do

  scenario 'A signed-in user can sign out and see non-signed-in homepage' do
    sign_up_user
    sign_in_user

    click_link 'Sign out'

    expect(page).to have_content('Sign in')
    expect(page).to have_content('Sign up')
    expect(page).not_to have_content('Sign out')
    expect(page).not_to have_content('Old Greg')
    expect(page).to have_content('Makers Air B\'n\'G')

  end
end
