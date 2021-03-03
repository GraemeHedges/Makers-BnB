feature 'Requests page' do
  scenario 'Start at the homepage, login and see the link to the requests page' do
    visit '/'
    click_link 'Sign in'
    fill_in 'username', with: 'Old Greg'
    fill_in 'password', with: 'Password1!'
    click_on 'Submit'
    expect(page).to have_link 'Requests', href: "./requests"
  end

  scenario 'Goes to request page and sees requests I have made' do
    visit '/'
    click_link 'Sign in'
    fill_in 'username', with: 'Old Greg'
    fill_in 'password', with: 'Password1!'
    click_on 'Submit'
    click_on 'Requests' 
    expect(page).to have_content 'Requests I have made:'
    expect(page).to have_content 'Requests I have received:'
    expect(page).to have_link 'Home', href: '/'
  end




end